// ignore_for_file: avoid_print, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';
import 'package:my_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginPage(title: ' Login Page'),
    );
  }
}
