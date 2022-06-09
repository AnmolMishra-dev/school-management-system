  import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';

import 'login_Page.dart';
  class Loginchoice_oldUser extends StatefulWidget {
    const Loginchoice_oldUser({Key? key}) : super(key: key);

    @override
    _Loginchoice_oldUserState createState() => _Loginchoice_oldUserState();
  }

  class _Loginchoice_oldUserState extends State<Loginchoice_oldUser> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(onTap: (){
            Navigator.pop(context);

          },child: Icon(Icons.arrow_back_ios,color: MyColors.Intro_button_Color,)),
        ),

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width*.8,
                  height: 45,
             color: MyColors.Fb_Button_Color,
                  child: Center(child: Text("Sign in with facebook",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*.8,
                  height: 45,
          color: MyColors.Google_Button_Color,
                  child: Center(child: Text("Sign in with Google",style: TextStyle(color: MyColors.Text_Coloe_Black,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
              Text("OR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.Text_Coloe_Black),),
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width*.8,
                    height: 45,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              MyColors.Intro_Text_Color,
                              MyColors.Intro_button_Color
                            ]
                        )
                    ),
                    child: Center(child: Text("Sign in with Email",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width*.8,
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: MyColors.Text_Coloe_Black,fontWeight: FontWeight.bold),

                    children: <TextSpan>[
                      TextSpan(text: ' Sign up', style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.Intro_Text_Color)),
                    ],
                  ),),
              ],
            ),
          ),
        )



            ],
          ),
        ),
      );
    }
  }
