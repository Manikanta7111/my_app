import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(30),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("<-- Goback",style: TextStyle(color: Colors.black),),
        ),
      ),
    );
  }
}