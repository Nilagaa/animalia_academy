import "package:flutter/material.dart";

import "screens.dart";


Map<String, Widget Function(BuildContext)> routes = {
  "/home": (context) => const Home(),
  "/splash": (context) => const Splash(),
  "/register": (context) => const Register(),
  "/login": (context) => const Login(),
  "/favorites": (context) => const Favorites(),
  "/explore": (context) => const Explore(),
  "/animal_info": (context) => const AnimalInfo(),
  "/animal_selection": (context) => const AnimalSelection(),
  "/quiz": (context) => const Quiz(),
  "/quiz_results": (context) => const QuizResults(),
  "/settings": (context) => const Settings(),
  "/parental_control": (context) => const ParentalControl(),
  "/about_us": (context) => const AboutUs(),
  "/support": (context) => const Support(),
  "/help": (context) => const Help(),
};