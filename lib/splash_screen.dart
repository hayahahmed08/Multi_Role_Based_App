import 'package:flutter/material.dart';
import 'package:multi_role_base_app/Home_Screen.dart'; // Import the HomeScreen widget
import 'dart:async';
import 'package:multi_role_base_app/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';// Import dart:async for Timer

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void islogin()async{
    SharedPreferences sp =await SharedPreferences.getInstance();
   bool islogin = sp.getBool('islogin()');
  }
  void initState() {
    super.initState();
    // Navigate to the home screen after a delay
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: NetworkImage(
            'https://images.pexels.com/photos/6605903/pexels-photo-6605903.jpeg?auto=compress&cs=tinysrgb&w=400'),
        fit: BoxFit.cover, // This makes the image cover the entire screen
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
