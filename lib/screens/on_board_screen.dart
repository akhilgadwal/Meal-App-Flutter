import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/screens/tabs.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Container(
                    height: displayWidth(context) * 0.6,
                    width: displayWidth(context) * 0.6,
                    color: Colors.blue, // Change the color as needed
                    child: ClipOval(
                      clipper: SemiCircleClipper(),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1602881917445-0b1ba001addf?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Welcome to Meal App',
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(fontSize: 28.0),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Discover delightful recipes that bring joy \nto your kitchen. From quick and easy \ndinners to gourmet desserts, explore a \nworld of flavors right at your fingertips.',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.grey.shade500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: SwipeableButtonView(
              onFinish: () async {
                User? user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  // User is authenticated, navigate to TabScreen
                  await Navigator.push(
                    context,
                    PageTransition(
                      child: const TabScreen(),
                      type: PageTransitionType.fade,
                    ),
                  );
                } else {
                  // User is not authenticated, handle authentication (e.g., show sign-in screen)
                  // Example: await Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                }
              },
              isFinished: isFinished,
              onWaitingProcess: () {
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    setState(() {
                      isFinished = true;
                    });
                  },
                );
              },
              activeColor: Colors.green,
              buttonWidget: const Icon(Icons.arrow_forward_ios_rounded),
              buttonText: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }

  double displayWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

class SemiCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width / 2, size.height),
      radius: size.width,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
