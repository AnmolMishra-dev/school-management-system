import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';

import 'New_User_Page/SignUp_Page.dart';
import 'old_user/Login choice.dart';

class LoginChoice extends StatefulWidget {
  const LoginChoice({Key? key}) : super(key: key);

  @override
  _LoginChoiceState createState() => _LoginChoiceState();
}

class _LoginChoiceState extends State<LoginChoice> {
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
            Text("Schoolie",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color:Color(0XFF3a6355)),),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 15),
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
                  child: Center(child: Text("New User ",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginchoice_oldUser()),
              );
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 5,),
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
                  child: Center(child: Text("Existing User ",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}
