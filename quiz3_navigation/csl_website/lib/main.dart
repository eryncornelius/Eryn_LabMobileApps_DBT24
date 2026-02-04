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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> pages = const [
    'Programs',
    'Admission',
    'People',
    'Laboratory',
    'Campus Life',
    'Office & Services',
  ];

  void showAlert(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text('You clicked $title'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Image.asset(
          'assets/images/logo_upm_biru.png',
          height: 40,
        ),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: pages.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    Navigator.pop(context);
                    showAlert(context, item);
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            Center(
              child: Image.asset(
                'assets/images/logo_upm_biru.png',
                fit: BoxFit.cover,
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'VISION',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'A globally recognized School for STEMpreneur Education and Research',
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'MISSION',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Provide quality STEM education and research for nurturing holistic citizen graduates.\n'
                '1. Collaborative learning by enterprising involving interdisciplinary catalytic projects.\n'
                '2. Innovative and impactful research to the society\n',
              ),
            ),

            const SizedBox(height: 200),

            Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_upm_biru.png',
                    width: 300,
                  ),

                  const SizedBox(height: 8),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'BSD City Kavling Edutown I.1\n'
                      'Jl. BSD Raya Utama, BSD City 15339\n'
                      'Kabupaten Tangerang, Indonesia\n\n'
                      'Tel. (021) 304-50-500\n'
                      'info@prasetiyamulya.ac.id',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}