
// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';

import 'Intor_Page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Home()
            )
        )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.BackGround_Color2,
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topRight,
              end: Alignment.bottomRight,

              colors: [
                MyColors.BackGround_Color1,
                MyColors.BackGround_Color2

              ])
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/splash.png",width: MediaQuery.of(context).size.width*.5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Schoolie",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color:Color(0XFF3a6355)),),
            ),
          ],
        ),

      ),
    );
  }
}
