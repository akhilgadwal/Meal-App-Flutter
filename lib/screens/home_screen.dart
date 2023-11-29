import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mealapp/provider/theme_provider.dart';
import 'package:mealapp/screens/home_meal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedCategory = 'All';
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  final Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            // color: Colors.green,
          ),
        ),
        actions: [
          Consumer(
            builder: (context, ref, child) {
              final isDarkMode = ref.watch(currenttheme);
              final iconColor = isDarkMode ? Colors.white : Colors.black26;
              return IconButton(
                icon: Icon(
                  Icons.lightbulb,
                  color: iconColor,
                ),
                onPressed: () async {
                  ref.read(currenttheme.notifier).state =
                      !ref.read(currenttheme.notifier).state;
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool(
                      'isdark', ref.read(currenttheme.notifier).state);
                },
              );
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Find your Fav Meals',
                style: GoogleFonts.nunito(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.00),
              child: TextField(
                controller: _searchController,
                onChanged: (query) {
                  setState(() {
                    _searchQuery = query;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search for meals...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.green, width: 1.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Recommended Meals',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _buildCategoryRow(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder<List<dynamic>>(
                  future: _getSearchResults(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: LoadingAnimationWidget.stretchedDots(
                          color: Colors.green, // Customize the color as needed
                          size: 40, // Customize the size as needed
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No meals found.'));
                    } else {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                        ),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return _buildMealCard(snapshot.data![index]);
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCategoryButton('All'),
        _buildCategoryButton('Local'),
        _buildCategoryButton('Continents'),
        // Add more category buttons as needed
      ],
    );
  }

  Widget _buildCategoryButton(String category) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          color: _selectedCategory == category ? Colors.green.shade300 : null,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            category,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color:
                    _selectedCategory == category ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMealCard(dynamic meal) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MealDetails(meal: meal),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                meal['imageUrl'],
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                meal['title'],
                style: GoogleFonts.nunito(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<dynamic>> _getSearchResults() async {
    try {
      final response = await _dio.get(
        'https://www.themealdb.com/api/json/v1/1/search.php?s=$_searchQuery',
      );

      if (response.statusCode == 200) {
        final meals = response.data['meals'] == null
            ? []
            : (response.data['meals'] as List)
                .map((json) => {
                      'id': json['idMeal'],
                      'categories': [''], // Add your logic to get categories
                      'title': json['strMeal'],
                      'imageUrl': json['strMealThumb'],
                      'instructions': json['strInstructions'],
                      'ingredients': List.generate(
                        20,
                        (index) =>
                            json['strIngredient${index + 1}'] ??
                            '', // Adjust index
                      ),
                      'measurements': List.generate(
                        20,
                        (index) =>
                            json['strMeasure${index + 1}'] ??
                            '', // Adjust index
                      ),
                      'source': json['strSource'],
                      'youtubeUrl': json['strYoutube'],
                      'name_meal': json['strCategory']
                      // Add other properties as needed
                    })
                .toList();
        return meals;
      } else {
        throw Exception('Failed to load meals');
      }
    } catch (error) {
      throw error;
    }
  }
}

Widget _buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                    'path_to_your_image'), // Replace with your image path
              ),
              const SizedBox(height: 8),
              Text(
                'Your Name',
                style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              leading: const Icon(Icons.person, color: Colors.green),
              title: Text(
                'Profile',
                style: GoogleFonts.nunitoSans(),
              ),
              onTap: () {
                // Handle the tap on Profile
                Navigator.pop(context); // Close the drawer
                // Add logic to navigate to the profile screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.green),
              title: Text(
                'About Us',
                style: GoogleFonts.nunitoSans(),
              ),
              onTap: () {
                // Handle the tap on About Us
                Navigator.pop(context); // Close the drawer
                // Add logic to navigate to the about us screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.green),
              title: Text(
                'Logout',
                style: GoogleFonts.nunitoSans(),
              ),
              onTap: () {
                // Handle the tap on Logout
                Navigator.pop(context); // Close the drawer
                // Add logic for logout
              },
            ),
          ],
        ),
        const Divider(), // Add a divider for visual separation
        ListTile(
          leading: const Icon(Icons.share, color: Colors.green),
          title: Text(
            'Share',
            style: GoogleFonts.nunitoSans(),
          ),
          onTap: () {
            // Handle the tap on Share
            Navigator.pop(context); // Close the drawer
            // Add logic for sharing
          },
          trailing: const Icon(Icons.edit,
              color: Colors.green), // Add edit icon on the right
        ),
      ],
    ),
  );
}
