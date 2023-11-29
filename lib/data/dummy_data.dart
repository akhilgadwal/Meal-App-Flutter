// import 'package:mealapp/models/category.dart';
// import 'package:mealapp/models/meals.dart';

// List<Category> categories = [
//   Category(id: 'm1,',title: 'USA', color: 0xFF3498db),
//   Category(id: 'm2,',title: 'Japan', color: 0xFFe74c3c),
//   Category(id: 'm3,',title: 'India', color: 0xFF2ecc71),
//   Category(id: 'm4,',title: 'France', color: 0xFF9b59b6),
//   Category(id: 'm5,',title: 'Brazil', color: 0xFFf39c12),
//   Category(id: 'm6,',title: 'Australia', color: 0xFF1abc9c),
//   Category(id: 'm7,',title: 'Canada', color: 0xFF3498db),
//   Category(id: 'm8,',title: 'Germany', color: 0xFFe74c3c),
//   Category(id: 'm9,',title: 'China', color: 0xFF2ecc71),
//   Category(id: 'm10', title: 'Mexico', color: 0xFF9b59b6),
//   Category(id: 'm11', title: 'Russia', color: 0xFFe74c3c),
//   Category(id: 'm12', title: 'South Korea', color: 0xFF1abc9c),
//   Category(id: 'm13', title: 'United Kingdom', color: 0xFF3498db),
//   Category(id: 'm14', title: 'Italy', color: 0xFF2ecc71),
//   Category(id: 'm15', title: 'Spain', color: 0xFFf39c12),
//   Category(id: 'm16', title: 'Argentina', color: 0xFF9b59b6),
//   Category(id: 'm17', title: 'Netherlands', color: 0xFF1abc9c),
//   Category(id: 'm18', title: 'Switzerland', color: 0xFF3498db),
//   Category(id: 'm19', title: 'Sweden', color: 0xFFe74c3c),
//   Category(id: 'm20', title: 'Norway', color: 0xFF2ecc71),
//   // Add more countries as needed
// ];

// List<Meal> dummyMeals = [
//   Meal(
//     id: '1',
//     categories: ['m1','m2','m3'],
//     title: 'Scrambled Eggs',
//     imageUrl:
//         'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2023/06/Greek-Scrambled-Eggs-12.jpg',
//     ingredients: ['Eggs', 'Salt', 'Pepper'],
//     steps: ['Beat eggs', 'Add salt and pepper', 'Scramble in a pan'],
//     duration: 10,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: true,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c2',
//     categories: ['m4','m5','m6'],
//     title: 'Chicken Salad',
//     imageUrl:
//         'https://img.freepik.com/free-photo/bottom-view-caesar-salad-oval-plate-dark-red-table_140725-129941.jpg?w=900&t=st=1700305920~exp=1700306520~hmac=7531627628827e62630bda775d9db4ad74778bddcf5fef3699d3b9798f5deb0e',
//     ingredients: ['Chicken', 'Lettuce', 'Tomatoes', 'Dressing'],
//     steps: ['Cook chicken', 'Chop vegetables', 'Mix all ingredients'],
//     duration: 20,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Pricey,
//     isGlutenFree: true,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c3',
//     categories: ['m7','m8','m9'],
//     title: 'Vegetarian Pasta',
//     imageUrl:
//         'https://img.freepik.com/free-photo/baked-steak-chopped-chicken-fillet-with-spinach-side-dish-tomatoes-salad-european-cuisine-dietary-food_2829-17156.jpg?w=826&t=st=1700305969~exp=1700306569~hmac=5181c1901e185b819f7057941e539352fb8d35ba667ea871c95577a5705c6e21',
//     ingredients: ['Pasta', 'Tomato sauce', 'Vegetables', 'Cheese'],
//     steps: ['Boil pasta', 'Prepare sauce', 'Mix with vegetables and cheese'],
//     duration: 30,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: true,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c4',
//     categories: ['m2','m5','m3',],
//     title: 'Fruit Smoothie',
//     imageUrl:
//         'https://img.freepik.com/free-photo/delicious-strawberry-mulberry-blueberry-smoothie-garnished-with-fresh-berries-mint-glass-soft-focus-beautiful-appetizer-pink-raspberries-well-being-weight-loss-concept_1150-45656.jpg?w=900&t=st=1700306049~exp=1700306649~hmac=b0a08c3c3de0837dbba967552938fab2a745a2c7b6a70de052584e25dd8cbaa1',
//     ingredients: ['Banana', 'Berries', 'Yogurt', 'Honey'],
//     steps: ['Blend all ingredients', 'Serve in a glass'],
//     duration: 15,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: true,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c5',
//     categories: ['m10','m11','m12',],
//     title: 'Grilled Chicken Sandwich',
//     imageUrl:
//         'https://img.freepik.com/free-photo/panini-sandwich-with-ham-cheese-tomato-arugula-isolated-white-background_123827-26728.jpg?w=900&t=st=1700306095~exp=1700306695~hmac=5bf026b53c109e710cc69dcf1dc36442fc4ebb14b65440d84b3d21c48133ccc4',
//     ingredients: ['Chicken breast', 'Bread', 'Lettuce', 'Tomato'],
//     steps: ['Grill chicken', 'Assemble sandwich'],
//     duration: 25,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c6',
//     categories: ['m14','m17','m19'],
//     title: 'Salmon with Asparagus',
//     imageUrl:
//         'https://img.freepik.com/free-photo/baked-salmon-garnished-with-asparagus-tomatoes-with-herbs_2829-14476.jpg?w=996&t=st=1700306130~exp=1700306730~hmac=10a67c201579349d25a868b3b893d4628184b0ae3dc9ed888f3f05b5dbab3c9d',
//     ingredients: ['Salmon fillet', 'Asparagus', 'Lemon', 'Olive oil'],
//     steps: ['Bake salmon and asparagus', 'Drizzle with lemon and olive oil'],
//     duration: 35,
//     complexity: Complexity.Hard,
//     affordability: Affordability.Luxurious,
//     isGlutenFree: true,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c7',
//     categories: ['m12','m15','m13'],
//     title: 'Pancakes with Maple Syrup',
//     imageUrl:
//         'https://img.freepik.com/free-photo/homemade-breakfast-american-style-pancakes-served-with-pears-honey-with-cup-tea-concrete-top-view-copy_114579-3929.jpg?w=740&t=st=1700306159~exp=1700306759~hmac=53ccff54f14dcd8205c2c3c3f90be396b0daddcc2d818bc5125154863d58e5fd',
//     ingredients: ['Flour', 'Milk', 'Egg', 'Maple syrup'],
//     steps: ['Mix ingredients', 'Cook pancakes', 'Drizzle with maple syrup'],
//     duration: 20,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c8',
//     categories: ['m10', 'm20'],
//     title: 'Caprese Salad',
//     imageUrl:
//         'https://img.freepik.com/free-photo/close-up-photo-top-view-plate-with-caprese-salad-restaurant-arrangement-food_176420-15947.jpg?w=900&t=st=1700306190~exp=1700306790~hmac=d9f19ebf344c569511929c7fe5651f2ec6aa26fcc2502ebcc1339fedae343a9f',
//     ingredients: ['Tomatoes', 'Mozzarella', 'Basil', 'Balsamic glaze'],
//     steps: [
//       'Slice tomatoes and mozzarella',
//       'Arrange with basil',
//       'Drizzle with balsamic glaze'
//     ],
//     duration: 15,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: true,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c9',
//     categories: ['m10', 'm2'],
//     title: 'Beef Stir-Fry',
//     imageUrl:
//         'https://img.freepik.com/free-photo/stir-fry-chicken-sweet-peppers-green-beans_2829-20110.jpg?w=900&t=st=1700306226~exp=1700306826~hmac=e11e837913c4dfa6ffab42fd302c58f3c4844a18eb7112cc72c699f0bb8585b9',
//     ingredients: ['Beef strips', 'Vegetables', 'Soy sauce', 'Rice'],
//     steps: ['Stir-fry beef and vegetables', 'Add soy sauce', 'Serve over rice'],
//     duration: 30,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Pricey,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c10',
//     categories: ['m2','m5','m3', 'Vegan'],
//     title: 'Avocado Toast',
//     imageUrl:
//         'https://img.freepik.com/free-photo/avocado-open-toast-with-avocado-slices-lemon-flax-seeds-sesame-seeds-black-bread-slices-top-view_2831-797.jpg?w=900&t=st=1700306256~exp=1700306856~hmac=eb9a8c2b44d0dc6ac2ae3e30eae92e9e933ad19f35779cf02291e91b572a0d97',
//     ingredients: ['Bread', 'Avocado', 'Salt', 'Pepper'],
//     steps: ['Toast bread', 'Mash avocado', 'Season with salt and pepper'],
//     duration: 15,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: true,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c11',
//     categories: ['Lunch'],
//     title: 'Shrimp Pasta',
//     imageUrl:
//         'https://img.freepik.com/free-photo/spaghetti-seafood-with-tomato-sauce-decorated-with-beautiful-ingredients_1150-26422.jpg?w=900&t=st=1700306306~exp=1700306906~hmac=a87a8247e6474b7c62e06ab8e7f50aa1606e31713a4151e7b4f32856f501140c',
//     ingredients: ['Shrimp', 'Pasta', 'Tomato sauce', 'Garlic'],
//     steps: ['Cook pasta', 'Sauté shrimp and garlic', 'Mix with tomato sauce'],
//     duration: 25,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Pricey,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c12',
//     categories: ['m2','m3'],
//     title: 'Teriyaki Chicken Bowl',
//     imageUrl:
//         'https://img.freepik.com/free-photo/pieces-chicken-fillet-with-mushrooms-stewed-tomato-sauce-with-boiled-broccoli-rice-proper-nutrition-healthy-lifestyle-dietetic-menu-top-view_2829-20020.jpg?w=900&t=st=1700306406~exp=1700307006~hmac=93b424e8a836deab6dbaabf6f83adcb9bc894561bc8276e31bb236eb66fcaa3e',
//     ingredients: ['Chicken thighs', 'Teriyaki sauce', 'Rice', 'Vegetables'],
//     steps: [
//       'Marinate chicken in teriyaki sauce',
//       'Grill or bake chicken',
//       'Serve over rice with vegetables'
//     ],
//     duration: 30,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Pricey,
//     isGlutenFree: true,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c13',
//     categories: ['m2','m5','m3'],
//     title: 'Blueberry Pancakes',
//     imageUrl:
//         'https://img.freepik.com/free-photo/top-view-sweet-pancakes-composition-with-copy-space_23-2148654076.jpg?w=900&t=st=1700306442~exp=1700307042~hmac=dd1025e71b44bc892c4a24bffdab886ea45ceb2a0386248e729f37f9daf7b2aa',
//     ingredients: ['Flour', 'Milk', 'Egg', 'Blueberries'],
//     steps: [
//       'Mix ingredients',
//       'Cook pancakes with blueberries',
//       'Serve with maple syrup'
//     ],
//     duration: 20,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c14',
//     categories: ['m9'],
//     title: 'Vegetable Wrap',
//     imageUrl:
//         'https://img.freepik.com/free-photo/front-view-lavash-sandwich-rolls-sliced-with-salad-meat-inside-along-with-salad-along-with-vegetables-wood_140725-20742.jpg?w=900&t=st=1700306482~exp=1700307082~hmac=08658dcc1921305271e2bdbb1f8b5b708f7d5f198e174909d405f21c932abb24',
//     ingredients: ['Tortilla', 'Hummus', 'Assorted vegetables', 'Feta cheese'],
//     steps: [
//       'Spread hummus on tortilla',
//       'Add vegetables and feta',
//       'Wrap and enjoy'
//     ],
//     duration: 15,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: false,
//     isVegan: true,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c15',
//     categories: ['m20','m18'],
//     title: 'Spaghetti Bolognese',
//     imageUrl:
//         'https://img.freepik.com/free-photo/top-view-delicious-pasta-plate_23-2150690621.jpg?t=st=1700306540~exp=1700310140~hmac=0ff7238b6a739d89abf04dfb4d1dd424c06aac20ed4d4177214ce39f89b4f9f4&w=826',
//     ingredients: ['Ground beef', 'Tomato sauce', 'Onion', 'Spaghetti'],
//     steps: [
//       'Brown beef and onion',
//       'Add tomato sauce',
//       'Serve over cooked spaghetti'
//     ],
//     duration: 40,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c16',
//     categories: ['m2','m5','m3', 'Vegetarian'],
//     title: 'Greek Yogurt Parfait',
//     imageUrl:
//         'https://img.freepik.com/free-photo/fresh-organic-berry-parfait-with-granola-crunch-generated-by-ai_188544-24653.jpg?t=st=1700306593~exp=1700310193~hmac=72b028729c595a5828ad93eea20b0ad15f86a760986897aacf01744e4b1e6bdf&w=1060',
//     ingredients: ['Greek yogurt', 'Granola', 'Berries', 'Honey'],
//     steps: [
//       'Layer yogurt, granola, and berries',
//       'Drizzle with honey',
//       'Repeat layers'
//     ],
//     duration: 10,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: true,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c17',
//     categories: ['Lunch'],
//     title: 'Mushroom Risotto',
//     imageUrl:
//         'https://img.freepik.com/free-photo/rustic-vegetarian-risotto-with-parmesan-cheese-parsley-generated-by-ai_24640-82313.jpg?t=st=1700306621~exp=1700310221~hmac=761e77590b9929b8c5e23e656d91c9d28c7bf49e2fcd193b27db8ba037d699c3&w=1060',
//     ingredients: [
//       'Arborio rice',
//       'Mushrooms',
//       'Vegetable broth',
//       'Parmesan cheese'
//     ],
//     steps: [
//       'Sauté mushrooms and rice',
//       'Gradually add broth',
//       'Stir in Parmesan cheese'
//     ],
//     duration: 35,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Pricey,
//     isGlutenFree: true,
//     isLactoseFree: false,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c18',
//     categories: ['m6'],
//     title: 'Beef Tacos',
//     imageUrl:
//         'https://img.freepik.com/free-photo/traditional-mexican-tacos-with-meat-vegetables-isolated-white-background-ai-generative_123827-24862.jpg?t=st=1700305557~exp=1700309157~hmac=2dd073fcf2c6ff65cbe34d4db6db1b69144398d38d1cfeb8ec8f8e5dc6070c03&w=900',
//     ingredients: ['Ground beef', 'Taco seasoning', 'Tortillas', 'Salsa'],
//     steps: [
//       'Cook beef with taco seasoning',
//       'Warm tortillas',
//       'Assemble tacos with salsa'
//     ],
//     duration: 25,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: false,
//   ),
//   Meal(
//     id: 'c19',
//     categories: ['m2','m5','m3'],
//     title: 'Banana Nut Muffins',
//     imageUrl:
//         'https://img.freepik.com/free-photo/view-delicious-cake-dessert-with-bananas_23-2150822881.jpg?t=st=1700306682~exp=1700310282~hmac=ccb9e481c37d9c7f60d04cbd1b0e3989bb3ef25ebec945e0420700287b4f5670&w=826',
//     ingredients: ['Bananas', 'Flour', 'Nuts', 'Baking powder'],
//     steps: [
//       'Mash bananas',
//       'Mix with dry ingredients and nuts',
//       'Bake into muffins'
//     ],
//     duration: 30,
//     complexity: Complexity.Challenging,
//     affordability: Affordability.Affordable,
//     isGlutenFree: false,
//     isLactoseFree: true,
//     isVegan: false,
//     isVegetarian: true,
//   ),
//   Meal(
//     id: 'c20',
//     categories: ['m2', 'm4','m7','m10'],
//     title: 'Quinoa Salad',
//     imageUrl:
//         'https://img.freepik.com/free-photo/fresh-vegetarian-salad-with-quinoa-tomato-herbs-generated-by-ai_188544-39086.jpg?t=st=1700306715~exp=1700310315~hmac=0c135b88f88cd1c64b058ad7df8ee9461c2d084d7f77d60aa671805aa47ff9d4&w=1060',
//     ingredients: ['Quinoa', 'Cucumbers', 'Tomatoes', 'Dressing'],
//     steps: ['Cook quinoa', 'Chop vegetables', 'Toss with dressing'],
//     duration: 20,
//     complexity: Complexity.Simple,
//     affordability: Affordability.Affordable,
//     isGlutenFree: true,
//     isLactoseFree: true,
//     isVegan: true,
//     isVegetarian: true,
//   ),
// ];

import 'package:flutter/material.dart';
import 'package:mealapp/models/category.dart';
import 'package:mealapp/models/meals.dart';
// Constants in Dart should be written in lowerCamelcase.
 List availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

 List<Meal> dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];