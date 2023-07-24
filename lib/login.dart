import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;
  
  @override
  //string
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  late String username;
  //String
  late String password;
  late Future<SharedPreferences> preferences = SharedPreferences.getInstance();
  login() async {
    final _preferences = await preferences;
    var data = FormData.fromMap(
        {'email': username, 'password': password, 'model': 'mani'});
    print(username);
    print(password);
    final dio = Dio();
    final response =
        await dio.post('https://qa.godavarirss.org/api/Auth/Login', data: data);
    var responsedata = response.data;
    _preferences.setString('Token', responsedata['key']);
    print(_preferences.getString('Token'));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Center(
        // ignore: sort_child_properties_last
        child: Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Text(
                'Welcome Back',
                // ignore: prefer_const_constructors
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              Text(
                'Welcome Back! Please Enter Your Details:',
              ),
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(hintText: 'Enter Your Email'),
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                },
              ),
              // ignore: prefer_const_constructors
              TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
              ),
              // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Checkbox(
                        value: false,
                        activeColor: Colors.blue,
                        onChanged: null,
                        checkColor: Colors.blue,
                        focusColor: Colors.black,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "Remember me",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )
                    ],
                  ),
                  TextButton(
                    child: const Text("forgot password"),
                    onPressed: () {
                    },
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                      // ignore: prefer_const_constructors
                      backgroundColor: MaterialStatePropertyAll(
                          // ignore: prefer_const_constructors
                          Colors.black)),
                  onPressed: () {
                    login();
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Sign in',
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Colors.white),
                  )),
              // ignore: prefer_const_constructors
              Padding(padding: EdgeInsets.only(top: 10)),
              // ignore: prefer_const_constructors
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                      // ignore: prefer_const_constructors
                      backgroundColor: MaterialStatePropertyAll(
                          // ignore: prefer_const_constructors
                          Colors.black)),
                  onPressed: () {
                  },
                  // ignore: prefer_const_constructors
                  child: Text(  
                    "Sign in with Google",
                    // ignore: prefer_const_constructors
                    style: TextStyle(color: Colors.white),
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't  have  an account?"),
                    TextButton(
                        child: const Text("sign up"),
                        onPressed: () {
                        }),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
