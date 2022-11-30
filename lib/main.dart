import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainClass());
}

class MainClass extends StatelessWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    navigatoFromSplash(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Roulette(
          infinite: true,
          child: const Image(
            image: AssetImage('assets/icon.jpg'),
          ),
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

void navigatoFromSplash(context) {
  Timer(
      const Duration(milliseconds: 2000),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
          (route) => false));
}
