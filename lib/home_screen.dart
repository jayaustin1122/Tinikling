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
    {
      'title': 'History',
      'image': 'assets/kimono.jpeg',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },
    {
      'title': 'Music',
      'image': 'assets/kimono2.jpeg',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },
    {
      'title': 'Steps',
      'image': 'assets/buwan.jpeg',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },
    {
      'title': 'Costume',
      'image': 'assets/barong.jpeg',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },

    // Add more categories if needed
  ];

  final List<Map<String, dynamic>> videos = [
    {
      'title': 'Waltz',
      'image': 'assets/barong.jpeg',
      'video': 'assets/Waltz.mp4',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },
    {
      'title': 'Waltz',
      'image': 'assets/barong.jpeg',
      'video': 'assets/Waltz.mp4',
      'description':
          'Brief History <br>The tinikling is one of the most popular and well-known of traditional Philippine dances. The tinikling is a pre-Spanish dance from the Philippines that involves two people beating, tapping, and sliding bamboo poles on the ground and against each other in coordination with one or more dancers who step over and in between the poles in a dance. The name is a reference to birds locally known as tikling, which can be any of a number of rail species; the term tinikling literally means "tikling-like".<br>The steps of this dance are an imitation of the movements of a "tikling" bird that hops and escapes the traps set by hunters. Moving with poise and grace, the dancers skip in-between two bamboo poles that are held to pound rhythmically against each other. This dance is a specialty of Leyte.<br>Tinikling<br>Tinikling is the official national dance of the Philippines and one of the oldest dances in the archipelago which originated during the Spanish colonial period. It is characterized by the movements of one or more dancers between two bamboo poles while these are beaten in a certain rhythm against each other and onto the ground.<br>Where does Tinikling come from?<br>This dance is a favorite of the Visayan Islands, especially in the province of Leyte. The "Tikling" is a bird with long legs and a long neck It is also a term that is commonly used for a whole range of Squacco species. The "Tinikling" dance therefore, imitates the movement of the "Tikling" birds as they walk between grass stems or run over tree branches set by farmers. The dance is very playful and upbeat and requires endurance and grace. This spectacular dance is usually accompanied by a music.'
    },
    {
      'title': 'Waltz',
      'image': 'assets/buwan.jpeg',
      'video': 'assets/Waltz.mp4',
      'description': 'A beautiful waltz performance.'
    },
    {
      'title': 'Waltz',
      'image': 'assets/barong.jpeg',
      'video': 'assets/Waltz.mp4',
      'description': 'A beautiful waltz performance.'
    },
    {
      'title': 'Waltz',
      'image': 'assets/barong.jpeg',
      'video': 'assets/Waltz.mp4',
      'description': 'A beautiful waltz performance.'
    },
    {
      'title': 'Waltz',
      'image': 'assets/icon_logo.png',
      'video': 'assets/Waltz.mp4',
      'description': 'A beautiful waltz performance.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFE085), Color(0xFFF5E1C0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Kumusta, Patrick!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Halina\'t sabay nating tuklasin ang mga bagay na patungkol sa Tinikling',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 20),
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'I-search ang kategorya',
                  prefixIcon: const Icon(Icons.search),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Mga Kategorya',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tingnan Lahat',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 150,
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
                              description: categories[index]['description']!,
                              image: categories[index]['image']!,
                              isVideo: false, // Indicating this is not a video
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 16),
                        width: 100,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                categories[index]['image']!,
                                width: 80,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  categories[index]['title']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              // Example videos section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Mga Halimbawa ng Sayaw',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tingnan Lahat',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
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
                              description: videos[index]['description']!,
                              image: videos[index]['image']!,
                              video: videos[index]['video'], // Pass video file
                              isVideo: true, // Indicating this is a video
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 16),
                        width: 140,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                videos[index]['image']!,
                                width: 100,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  videos[index]['title']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
