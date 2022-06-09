import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:schooling/Const/Const.dart';

import 'LoginChoice_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(



        decoration: PageDecoration(contentMargin: EdgeInsets.zero,titleTextStyle: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 22),bodyFlex: 0,imageAlignment: Alignment.bottomCenter,bodyAlignment: Alignment.topCenter),

        title: "Welcome to home-school experience",
        image: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: MediaQuery.of(context).size.height*.6,
              child: Image.asset("assets/intro1.png")),
        ),
        bodyWidget: Container(),
        footer: Container(),
      ),
      PageViewModel(



        decoration: PageDecoration(contentMargin: EdgeInsets.zero,titleTextStyle: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 22),bodyFlex: 0,imageAlignment: Alignment.bottomCenter,bodyAlignment: Alignment.topCenter),

        title: "Real time experience",
        image: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: MediaQuery.of(context).size.height*.6,
              child: Image.asset("assets/intro1.png")),
        ),
        bodyWidget: Container(),
        footer: Container(),
      ),
      PageViewModel(



        decoration: PageDecoration(contentMargin: EdgeInsets.zero,titleTextStyle: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 22),bodyFlex: 0,imageAlignment: Alignment.bottomCenter,bodyAlignment: Alignment.topCenter),

        title: "Real time interaction",
        image: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: MediaQuery.of(context).size.height*.6,
              child: Image.asset("assets/intro1.png")),
        ),
        bodyWidget: Container(),
        footer: Container(),
      ),
      PageViewModel(



        decoration: PageDecoration(contentMargin: EdgeInsets.zero,titleTextStyle: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 22),bodyFlex: 0,imageAlignment: Alignment.bottomCenter,bodyAlignment: Alignment.topCenter),

        title: "Assignment submission made easy ",
        image: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: MediaQuery.of(context).size.height*.6,
              child: Image.asset("assets/intro1.png")),
        ),
        bodyWidget: Container(),
        footer: Container(),
      ),


    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [


          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Container(height: MediaQuery.of(context).size.height*.7,
              child: IntroductionScreen(

                dotsDecorator: DotsDecorator(activeColor: MyColors.Intro_Text_Color,size:Size.fromRadius(7),activeSize: Size.fromRadius(7)),


                next: Text(""),

                pages: getPages(),
                showNextButton: false,
                showDoneButton: false,

                done: Text(""),
                onDone: () {},
              ),
            ),
          ),

        InkWell(onTap: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                      LoginChoice()
              )
          );
        },
          child: Container(
            width: MediaQuery.of(context).size.width*.8,
            height: 50,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColors.Intro_Text_Color,
                MyColors.Intro_button_Color
              ]
            )
          ),
          child: Center(child: Text("Get started",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
        )
        ],),
      ),
    );
  }
}

