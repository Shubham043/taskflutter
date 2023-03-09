// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final RoundedLoadingButtonController googleController = RoundedLoadingButtonController();
   final RoundedLoadingButtonController facebookController = RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 17, 68, 4),
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 90,bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('assets/onlinemic.png'), height: 90, width: 90,fit: BoxFit.cover),
                  
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Welcome To Onlinemic", 
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800, color:  Colors.blue), ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("A digital platform", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0), fontWeight:FontWeight.w400 ),)
                  ],
                ),
              ),

              Column(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,

//  login buttons
children: [
  RoundedLoadingButton(controller: googleController,
  successColor: Colors.green,
  onPressed: () { 
    print("signup with google");
   },
   width: MediaQuery.of(context).size.width*0.8,
  elevation: 0,
  borderRadius: 20,
  child: Wrap(
    children: [
      Icon(
        FontAwesomeIcons.google, 
        color: Color.fromARGB(255, 253, 253, 253),
         size: 20,
      ),
      SizedBox(
        width: 10,
      ),
      Text("sign in with google", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)
    ],
  ),
  color: Colors.red,
  ),


// facebook signin button
  
   RoundedLoadingButton(controller: facebookController,
  successColor: Color.fromARGB(255, 203, 64, 143),
  width: MediaQuery.of(context).size.width*0.8,
  elevation: 0,
  borderRadius: 20,

  onPressed: () { 
    print("signup with facebook");
   },
  child: Wrap(
    children: [
      Icon(
        FontAwesomeIcons.squareFacebook, color: Color.fromARGB(255, 233, 230, 230), size: 20,
      ),
      SizedBox(
        width: 10,
      ),
      Text("sign in with facebook", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)
    ],
  ),
  )
],
              )
            ],
          ),)
           )
    );
  }
}
