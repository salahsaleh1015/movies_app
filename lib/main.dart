import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:movies_app/core/services/services_locator.dart';
import 'package:movies_app/core/utils/strings.dart';

import 'package:movies_app/movies_module/presentation/screens/movies_screen.dart';


void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainMoviesScreen(),
    );
  }
}
