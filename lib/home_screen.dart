import 'package:flutter/material.dart';
import 'package:tinikling/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Dummy data for the categories and example videos
  final List<Map<String, String>> categories = [
    {'title': 'kimono', 'image': 'assets/icon_logo.png'},
    {'title': 'Dance', 'image': 'assets/icon_logo.png'},
  ];

  final List<Map<String, String>> videos = [
    {'title': 'Video 1', 'image': 'assets/icon_logo.png'},
    {'title': 'Video 2', 'image': 'assets/icon_logo.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iGalaw'),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kumusta, Patrick!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Halina\'t sabay nating tuklasin ang mga bagay na patungkol sa Tinikling',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'i-search ang kategorya',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.orange),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Categories section
            const Text(
              'Mga kategorya',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120, // Adjust height to fit the card
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            title: categories[index]['title']!,
                            description:
                                'Description of ${categories[index]['title']}',
                            image: categories[index]['image']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            categories[index]['image']!,
                            width: 100,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(categories[index]['title']!),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Example videos section
            const Text(
              'Mga Halimbawa ng sayaw',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120, // Adjust height to fit the card
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            title: videos[index]['title']!,
                            description:
                                'Description of ${videos[index]['title']}',
                            image: videos[index]['image']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      child: Column(
                        children: [
                          Image.asset(
                            videos[index]['image']!,
                            width: 100,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(videos[index]['title']!),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
