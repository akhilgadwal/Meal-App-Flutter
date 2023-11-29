import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/connection.dart';
import 'package:mealapp/provider/theme_provider.dart';
import 'package:mealapp/screens/on_board_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
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
          home: const ConnectivityWrapper(
            child: OnBoardScreen(),
          ),
        );
      },
    );
  }
}
