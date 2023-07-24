// ignore: file_names
import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});
  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(

        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in with Google Account.',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}