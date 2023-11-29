import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/screens/home_meal.dart';



final favoriteMealsProvider = Provider<List<String>>((ref) => ref.watch(favoriteProvider));


class FavoriteScreen extends ConsumerWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> favoriteMeals = ref.watch(favoriteMealsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Meals'),
      ),
      body: ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (context, index) {
          final mealTitle = favoriteMeals[index];
          return ListTile(
            title: Text(mealTitle),
            // Add navigation to the MealDetails screen with the corresponding meal data
            // onTap: () {
            //   Navigator.push(F
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => MealDetails(meal: /* pass the corresponding meal data here */),
            //     ),
            //   );
            // },
          );
        },
      ),
    );
  }
}
