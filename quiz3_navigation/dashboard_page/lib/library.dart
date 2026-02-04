import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LibraryPage(),
    );
  }
}

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: const [
            LibraryBox(icon: Icons.menu_book, title: 'E-Books'),
            LibraryBox(icon: Icons.article, title: 'Journals'),
            LibraryBox(icon: Icons.school, title: 'Thesis'),
            LibraryBox(icon: Icons.video_library, title: 'Media'),
          ],
        ),
      ),
    );
  }
}

class LibraryBox extends StatelessWidget {
  final IconData icon;
  final String title;

  const LibraryBox({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 242, 240, 219),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              size: 36,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}