import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Icons and Images",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Icons and Images"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Icons Section
            const Text(
              "Icons",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text("This is a section for Icons"),

            const SizedBox(height: 20),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.music_note, size: 60, color: Colors.amber),

                Icon(Icons.search, size: 60, color: Colors.blue),

                Icon(Icons.favorite, size: 60, color: Colors.red),

                Icon(Icons.school, size: 60, color: Colors.lightGreenAccent),
              ],
            ),

            const SizedBox(height: 40),

            const Text(
              "Network Image",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text("This is a sample test for Network Image"),

            const SizedBox(height: 15),

            Center(
              child: Image.network(
                "https://thumbs.dreamstime.com/b/school-building-cartoon-illustration-55204891.jpg",
                width: 220,
              ),
            ),

            const SizedBox(height: 15),

            const Text("Asset Image"),

            const SizedBox(height: 40),

            Center(child: Image.asset("images/sampleImage.jpeg", width: 220)),
          ],
        ),
      ),
    );
  }
}
