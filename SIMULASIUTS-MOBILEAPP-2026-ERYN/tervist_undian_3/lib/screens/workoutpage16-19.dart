import 'package:flutter/material.dart';
import '../models/model.dart';
import '../widgets/workout-tab.dart';
import '../widgets/bottom-nav.dart';
import '../widgets/recommend.dart';
import '../screens/workoutpage20-21.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  int selectedIndex = 2;

  final workout = WorkoutModel(
    title: "Hi, Yesaya!",
    distance: 4.89,
    weather: "Cloudy",
    temperature: "30°C",
  );

  final tabs = [
    "Outdoor running",
    "Walking",
    "Treadmill",
    "Outdoor cycling"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          workout.title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Distance >\n${workout.distance} km",
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image (1).png'),
                      ),
                      const SizedBox(height: 4),
                      Image.asset('assets/images/image 23.jpg'),
                      Text(
                        "${workout.temperature} ${workout.weather}",
                        style: const TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    tabs.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: WorkoutTab(
                        title: tabs[index],
                        isSelected: selectedIndex == index,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  const Text(
                    "Where should you put your phone..?",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      elevation: 2,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (_) => const RecommendationSheet(),
                      );
                    },
                    child: const Icon(Icons.keyboard_arrow_right, size: 20), // Smaller icon
                  ),
                ],
              ),

              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/images/image.png",
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(30),
                  backgroundColor: const Color(0xff2DBE7F),
                  elevation: 6,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WorkoutPage()),
                  );
                },
                child: const Text(
                  "GO",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const BottomNav(),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

