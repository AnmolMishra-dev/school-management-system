import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Student_Pages/Home_Page.dart';

class AccountDetails1 extends StatefulWidget {
  const AccountDetails1({Key? key}) : super(key: key);

  @override
  _AccountDetails1State createState() => _AccountDetails1State();
}

class _AccountDetails1State extends State<AccountDetails1> {
  final MySubject= TextEditingController();


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
        title: Text("Account Details",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,height: 100,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      backgroundColor:  Color(0XFFf1fbfa),
                      radius: 50,
                      backgroundImage: AssetImage("assets/teacher.png"),
                    ),
                    Positioned(top: 80,
                      left: 35,
                      child: Container(
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(50)
                        ),

                        width: 30,height: 30,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Center(child: Icon(Icons.add,color: MyColors.Intro_Text_Color,)),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 5),
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                          ),)),
                    ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Class",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                          ),)),
                    ],),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 5),
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("School/University ",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                      TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                          ),)),
                    ],),
                ),
              ),
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
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
                    child: Center(child: Text("Done",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
