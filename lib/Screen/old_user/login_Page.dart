import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Choice_Page.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
    borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width*.8,
                          child: Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "Forgot Password?",
                                  style: TextStyle(color: Colors.grey.shade500,fontWeight: FontWeight.bold),

                                  children: <TextSpan>[
                                    TextSpan(text: ' Tap here', style: TextStyle(fontWeight: FontWeight.bold,color: MyColors.Intro_Text_Color)),
                                  ],
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],),
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => choice()),
                );
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
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
                    child: Center(child: Text("Sign In",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),



          ],),
        ),
      ),
    );
  }
}
