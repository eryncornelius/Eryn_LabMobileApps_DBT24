import 'package:flutter/material.dart';
import 'library.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
	const HomePage({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
		appBar: AppBar(
			title: const Text('Home'),
		),
		drawer: Drawer(
			child: SingleChildScrollView(
			child: Column(
				children: [
				ListTile(
					leading: const Icon(Icons.home),
					title: const Text('Home'),
					onTap: () {
					Navigator.pop(context);
					},
				),
				ListTile(
					leading: const Icon(Icons.book),
					title: const Text('Library'),
					onTap: () {
					Navigator.push(
						context,
						MaterialPageRoute(
						builder: (_) => const LibraryPage(),
						),
					);
					},
				),
				ListTile(
					leading: const Icon(Icons.person),
					title: const Text('Profile'),
					onTap: () {
					Navigator.push(
						context,
						MaterialPageRoute(
						builder: (_) => const ProfilePage(),
						),
					);
					},
				),
				],
			),
			),
		),
		body: SingleChildScrollView(
			child: Center(
			child: Column(
				children: [
				SizedBox(height: 40),
				Image.asset(
					'assets/images/181291.jpg',
					fit: BoxFit.contain,
				)
				],
			),
			),
		),
		);
	}
}
