import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String description;
  final String? image; // Make image optional
  final String? video; // Make video optional
  final bool isVideo; // Indicator for video

  const DetailScreen({
    required this.title,
    required this.description,
    this.image,
    this.video,
    this.isVideo = false,
    super.key,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  VideoPlayerController? _controller;
  bool _showControls = true; // Variable to control button visibility

  @override
  void initState() {
    super.initState();
    if (widget.isVideo && widget.video != null) {
      _controller = VideoPlayerController.asset(widget.video!)
        ..initialize().then((_) {
          setState(() {}); // Update UI when video is initialized
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose(); // Dispose of the video controller
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller!.value.isPlaying) {
        _controller!.pause();
        _showControls = true; // Show controls when paused
      } else {
        _controller!.play();
        _showControls = false; // Hide controls when playing
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.center,
                children: [
                  // Video player or placeholder
                  SizedBox(
                    height: 300, // Fixed height for video in the app bar
                    child: widget.isVideo &&
                            widget.video != null &&
                            _controller!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          )
                        : widget.image != null
                            ? Image.asset(
                                widget.image!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              )
                            : Container(), // Placeholder for uninitialized video
                  ),
                  // Show play button based on variable
                  if (widget.isVideo && _showControls)
                    Center(
                      child: IconButton(
                        iconSize: 48.0, // Smaller size for the play button
                        icon: Icon(
                          _controller!.value.isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_filled,
                          color: Colors.white,
                        ),
                        onPressed: _togglePlayPause,
                      ),
                    ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Description wrapped in SingleChildScrollView
                  Text(
                    widget.description.replaceAll('<br>', '\n'),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
