import 'package:flutter/material.dart';

class WorkoutTab extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function() onTap;

  const WorkoutTab({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight:
                  isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          if (isSelected)
            Container(
              height: 2,
              width: 40,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}