import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Menu/Assignment.dart';
import 'package:schooling/Screen/Menu/Attendance%20Log.dart';
import 'package:schooling/Screen/Menu/Chat.dart';
import 'package:schooling/Screen/Menu/Previous%20lecture.dart';
import 'package:schooling/Screen/Menu/Schedule%20Class.dart';



class MenuHome extends StatefulWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
top: true,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(

elevation: 0,
backgroundColor: Colors.white,
          foregroundColor:Colors.white,


          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Chat()),
            );
          },
          child: Icon(Icons.chat,size: 50,color:  MyColors.Intro_Text_Color,),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width,
              height: 40,
              color:  MyColors.Intro_Text_Color,
              child:    Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "To join the class",
                      style: TextStyle(color:MyColors.Text_Coloe_white),

                      children: <TextSpan>[
                        TextSpan(text: ' Tap here', style: TextStyle(fontWeight: FontWeight.bold,color:  MyColors.Text_Coloe_white,fontSize: 15)),
                      ],
                    ),),
                ],
              ),
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              InkWell(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleClass()),
                );
              },
                child: Card(
                  shadowColor: MyColors.Intro_Text_Color,
                  shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      ),
                  elevation: 4,
                  child: Container(
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(15)
                    ),

                    width: MediaQuery.of(context).size.width*.4,
                    height: 150,

child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
   Container(width: 50,height: 50,child: Image.asset("assets/ScheduleClass.png",color: MyColors.Intro_Text_Color)),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text("Schedule Class ",style: TextStyle(fontSize: 20,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold)),
      )
  ],
),
                  ),
                ),
              ),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PreviousLecture()),
                  );

                },
                  child: Card(
                    shadowColor: MyColors.Intro_Text_Color,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15)
                      ),

                      width: MediaQuery.of(context).size.width*.4,
                      height: 150,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 50,height: 50,child: Image.asset("assets/camera.png",color: MyColors.Intro_Text_Color)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Previous lecture",style: TextStyle(fontSize: 20,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),


            ],),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AttendanceLog()),
                  );

                },
                  child: Card(
                    shadowColor: MyColors.Intro_Text_Color,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15)
                      ),

                      width: MediaQuery.of(context).size.width*.4,
                      height: 150,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 50,height: 50,child: Image.asset("assets/person.png",color: MyColors.Intro_Text_Color)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Attendance Log",style: TextStyle(fontSize: 20,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Assignment()),
                  );

                },
                  child: Card(
                    shadowColor: MyColors.Intro_Text_Color,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15)
                      ),

                      width: MediaQuery.of(context).size.width*.4,
                      height: 150,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 50,height:50,child: Image.asset("assets/file.png",color: MyColors.Intro_Text_Color)),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Assignment",style: TextStyle(fontSize: 20,color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),


              ],)

          ],),
      ),
    );
  }
}
