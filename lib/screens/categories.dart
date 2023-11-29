import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy_data.dart';
import 'package:mealapp/models/category.dart';
import 'package:mealapp/screens/meals.dart';
import 'package:mealapp/widgets/grid_view.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  void selectedCategory(BuildContext context, Category category) {
    //filter data
    final filterMeals = dummyMeals
        .where(
          (meal) => meal.categories.contains(
            category.id,
          ),
        )
        .toList();
    //Navigations
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          title: category.title,
          meals: filterMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8.0, // Spacing between columns
          mainAxisSpacing: 8.0, // Spacing between rows
        ),
        // itemCount: categories.length,
        // itemBuilder: (context, index) {
        //   return CategoryCard(category: categories[index]);
        // },
        children: [
          for (final category in availableCategories)
            MyGridCard(
              category: category,
              onTap: () {
                selectedCategory(
                  context,
                  category,
                );
              },
            )
        ],
      ),
    );
  }
}
