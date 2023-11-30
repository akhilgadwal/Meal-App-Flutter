import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/connection.dart';
import 'package:mealapp/provider/theme_provider.dart';
import 'package:mealapp/screens/on_board_screen.dart'; // Import your SignInScreen
import 'package:mealapp/screens/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  Future<bool> gettheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final repeat = prefs.getBool('isdark') ?? false;
    ref.read(currenttheme.notifier).state = repeat;
    return repeat;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = ref.watch(currenttheme);
    return FutureBuilder(
      future: gettheme(),
      builder: (context, snapshot) {
        // Check if the user is signed in
        bool isUserSignedIn = FirebaseAuth.instance.currentUser != null;
        /* Implement your logic to check if the user is signed in */;

        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.green,
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.green,
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
          // Update the home property based on the sign-in status
          home: isUserSignedIn
              ? const ConnectivityWrapper(
                  child: OnBoardScreen(),
                )
              : const ConnectivityWrapper(
                  child: SignInScreen(),
                ),
        );
      },
    );
  }
}
