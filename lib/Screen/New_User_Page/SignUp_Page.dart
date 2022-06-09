import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/New_User_Page/SignIn_Page.dart';
import 'package:schooling/Screen/google_kogin/google_login.dart';

import '../Choice_Page.dart';
///
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(onTap: (){
            Navigator.pop(context);

          },child: Icon(Icons.arrow_back_ios,color: MyColors.Intro_button_Color,)),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Container(
                width: 160,
                height: 55,
                child: Stack(
                  children: [
                    Image.asset("assets/splash.png",color: Colors.grey.shade300,),
                    Align(alignment: Alignment.bottomRight,child: Text("Schoolie",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: MyColors.login_Page_Text),))
                  ],
                ),
              ),
              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                          ),)),
                    ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password ",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                            ),enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                          ),)),

                    ],),
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 15),
                  child: Container(

                    height: 45,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              MyColors.Intro_Text_Color,
                              MyColors.Intro_button_Color
                            ]
                        )
                    ),
                    child: Center(child: Text("Sign Up",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
              Align(alignment: Alignment.center,child: Text("OR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: MyColors.Text_Coloe_Black),)),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 30),
                child: Container(

                  height: 45,
                  color: MyColors.Fb_Button_Color,
                  child: Center(child: Text("Sign in with facebook",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
              ),
              InkWell(
onTap: (){
  signInWithGoogle().then((result) {
    if (result != null) {
      print(result);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return choice();
          },
        ),
      );
    }
  });
},

                child: Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 20),
                  child: Container(

                    height: 45,
                    color: MyColors.Google_Button_Color,
                    child: Center(child: Text("Sign in with Google",style: TextStyle(color: MyColors.Text_Coloe_Black,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),



            ],),
        ),
      ),
    );
  }
}
