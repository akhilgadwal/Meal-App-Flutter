import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/screens/favorite.dart';
import 'package:mealapp/widgets/youtube.dart';

class FavoriteNotifier extends StateNotifier<List<String>> {
  FavoriteNotifier() : super([]);

  void toggleFavorite(String mealTitle) {
    if (state.contains(mealTitle)) {
      state = List.from(state)..remove(mealTitle);
    } else {
      state = List.from(state)..add(mealTitle);
    }
  }
}

final favoriteProvider = StateNotifierProvider<FavoriteNotifier, List<String>>(
  (ref) => FavoriteNotifier(),
);

final isfavoriteProvider = StateProvider<bool>((ref) => false);

class MealDetails extends ConsumerWidget {
  final dynamic meal;
  const MealDetails({Key? key, required this.meal}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String youtubeVideoId = meal['youtubeUrl'].toString().split('=').last;
    final isFav = ref.watch(isfavoriteProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal['title'],
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              ref.read(isfavoriteProvider.notifier).state =
                  !(ref.read(isfavoriteProvider.notifier).state);
              showCustomSnackBar(context, ref.read(isfavoriteProvider), ref);
            },
            child: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : null,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              // ignore: prefer_interpolation_to_compose_strings
              'Category ' + meal['name_meal'],
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            YoutubeVideo(
              videoid: youtubeVideoId,
            ),
            const SizedBox(height: 16),
            buildInstructionText(context, meal['instructions']),
            const SizedBox(height: 16),
            buildIngredients(context, meal['ingredients']),
          ],
        ),
      ),
    );
  }

  Widget buildInstructionText(BuildContext context, String instructions) {
    const int maxLinesForInstructions = 4;

    final Text instructionText = Text(
      instructions,
      style: GoogleFonts.nunitoSans(
        fontSize: 16,
      ),
      maxLines: maxLinesForInstructions,
      overflow: TextOverflow.ellipsis,
    );

    if (instructionText.maxLines! > maxLinesForInstructions) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Instructions:',
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          InkWell(
            onTap: () {
              showFullInstructions(context, instructions);
            },
            child: Text(
              'Read more',
              style: GoogleFonts.nunitoSans(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Instructions:',
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          instructionText,
        ],
      );
    }
  }

  Widget buildIngredients(BuildContext context, List<dynamic> ingredients) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients:',
          style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        for (var ingredient in ingredients)
          Text(
            '- $ingredient',
            style: GoogleFonts.nunitoSans(fontSize: 16),
          ),
      ],
    );
  }

  void toggleFavorite(String mealTitle, WidgetRef ref) {
    ref.read(favoriteProvider.notifier).toggleFavorite(mealTitle);
  }

  void showFullInstructions(BuildContext context, String instructions) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Full Instructions',
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          content: Text(
            instructions,
            style: GoogleFonts.nunitoSans(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Close',
                style: GoogleFonts.nunitoSans(),
              ),
            ),
          ],
        );
      },
    );
  }

  void showCustomSnackBar(
      BuildContext context, bool isFavorite, WidgetRef ref) {
    final snackBar = SnackBar(
      content: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
            const SizedBox(width: 8),
            Text(
              isFavorite ? 'Added to favorites' : 'Removed from favorites',
              style: GoogleFonts.nunitoSans(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: isFavorite ? Colors.red : Colors.green,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white,
        onPressed: () {
          toggleFavorite(meal['title'], ref);
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    // Navigate to the favorites screen when a meal is added to favorites
    if (isFavorite) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>const  FavoriteScreen(),
        ),
      );
    }
  }
}
