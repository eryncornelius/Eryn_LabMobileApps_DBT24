import 'package:flutter/material.dart';
import '../widgets/stats.dart';
import '../screens/workoutpage23.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  bool showPlayStop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6ECEC),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 6),
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "4,89 Km",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatItem(
                            value: "01:18:02",
                            label: "Time",
                          ),
                          StatItem(
                            value: "15'58",
                            label: "Pace",
                          ),
                        ],
                      ),

                      SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatItem(
                            value: "286",
                            label: "Kcal",
                          ),
                          StatItem(
                            value: "3560",
                            label: "Steps",
                          ),
                        ],
                      ),

                      SizedBox(height: 25),

                      StatItem(
                        value: "78",
                        label: "SPM",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: showPlayStop
                    ? [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showPlayStop = false;
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color(0xFF2BAE9B),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SummaryPage()),
                            );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.stop,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ]
                    : [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showPlayStop = true;
                            });
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Color(0xFF2BAE9B),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
              ),
            )
          ],
        ),
      ),
    );
  }
}