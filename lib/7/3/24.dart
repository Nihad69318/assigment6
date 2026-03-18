import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GalleryScreen(),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Consistent Spacing
        child: GridView.builder(
          itemCount: 10, // ছবির সংখ্যা
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // প্রতি সারিতে ২ টি ছবি
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return const PhotoCard(); // Reusable Component
          },
        ),
      ),
    );
  }
}

// আলাদা উইজেট (Reusable Component)
class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15), // Visual Hierarchy
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                'https://picsum.photos/200', // ডামি ইমেজ
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Nature Photo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}