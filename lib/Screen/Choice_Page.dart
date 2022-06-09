import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Student_Pages/Account_Detail_Page.dart';
import 'package:schooling/Screen/Teacher_Pages/Account_Details_Page.dart';

class choice extends StatefulWidget {
  const choice({Key? key}) : super(key: key);

  @override
  _choiceState createState() => _choiceState();
}

class _choiceState extends State<choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
          Card(elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0XFFf1fbfa),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),

              padding: EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
              width: MediaQuery.of(context).size.width*.9,
              height: MediaQuery.of(context).size.height*.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35,bottom: 15),
                    child: Text("Who are you?",style: TextStyle(fontSize: 20,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AccountDetails1()),
                          );
                        },
                          child: Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: MyColors.Intro_Text_Color),),
                            child: Image.asset("assets/student.png"),
                          ),
                        ),
                        Text("Student",style: TextStyle(fontSize: 18,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),)
                      ],
                    ),

                    InkWell(onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AccountDetails()),
                      );

                    },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: MyColors.Intro_Text_Color),),
                            child: Image.asset("assets/teacher.png"),
                          ),
                          Text("Teacher",style: TextStyle(fontSize: 18,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],)
                ],
              ),

            ),
          )



        ],),
      ),

    );
  }
}
