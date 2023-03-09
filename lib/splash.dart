// ignore_for_file: unnecessary_import, prefer_const_constructors_in_immutables, prefer_const_constructors, duplicate_ignore, unused_import, override_on_non_overriding_member, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:splash/first.dart';
import 'package:splash/main.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context)=>
      MainPage()));
    });
  }

  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(160, 0, 0, 0),
      body: SafeArea(
       
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(padding: EdgeInsets.only(left: 600)),
         Image(image: AssetImage('assets/onlinemic.png'), 
         ),
         SizedBox(
          height: 30,
         ),
         Text("welcome to onlinemic", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.blue),)
        ],
       ),
      ),
    );
  }
}