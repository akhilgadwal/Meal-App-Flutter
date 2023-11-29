import 'package:flutter/material.dart';
import 'package:mealapp/models/category.dart';

class MyGridCard extends StatelessWidget {
  final Category category;
  final void Function()? onTap;

  const MyGridCard({super.key, required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                category.color
                    .withOpacity(0.7), // start color with some opacity
                category.color,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Center(
            child: Text(
              category.title,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
