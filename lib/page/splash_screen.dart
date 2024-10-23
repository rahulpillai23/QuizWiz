import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quizz_wiz/page/login.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF73B9F9),
              Color(0xD966B9F5),
              Color.fromARGB(180, 69, 94, 233),
              Color.fromARGB(116, 201, 127, 236),
              Color.fromARGB(40, 192, 148, 249),
            ]),
      ),
      child: AnimatedSplashScreen(
        splash: Stack(
          children: [
            Positioned(
              left: -29,
              top: 15,
              child: Container(
                width: 335,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/q_logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 152,
              top: 125,
              child: SizedBox(
                width: 175,
                height: 110,
                child: Text(
                  'uizwiz',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontFamily: 'Preahvihear',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
        nextScreen: LoginScreen(),
        backgroundColor: Colors.transparent,
        duration: 4000,
        splashIconSize: 300,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        animationDuration: const Duration(),
      ),
    );
  }
}
