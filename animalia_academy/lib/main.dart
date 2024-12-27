import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "main_app.dart";

import "consts/data/globals.dart";


void main() async {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Globals(),
      child: const MainApp(),
    )
  );
}
