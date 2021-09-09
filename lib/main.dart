import 'package:flutter/material.dart';

import 'package:cookamchop/screens/home.dart';
import 'package:cookamchop/screens/onboarding.dart';
import 'package:cookamchop/screens/splash.dart';

void main() {
  runApp(
    MaterialApp(
     initialRoute: '/onboarding',
     routes: {
       '/': (context) => Splash(),
       '/home': (context) => Home(),
       '/onboarding': (context) => Onboarding()
     },
     debugShowCheckedModeBanner: false,
    ),
  );
}
