import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Menu/Upload%20Assignment.dart';
class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  _AssignmentState createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert,color: MyColors.Intro_Text_Color,),
        )],
        elevation: 0,

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(onTap: (){
            Navigator.pop(context);

          },child: Icon(Icons.arrow_back_ios,color: MyColors.Intro_button_Color,)),
        ),
        title: Text(" ASSIGNMENT",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            InkWell(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UploadAssignment()),
              );

            },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: MyColors.Upload_Button,
                  width: 80,height: 30,child: Row(
                  children: [
                    Icon(Icons.upload_rounded,color: MyColors.Intro_button_Color,),
                    Text("Upload",style: TextStyle(color: MyColors.Intro_button_Color,fontWeight: FontWeight.bold),)
                  ],
                ),),
              ),
            ),

            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        MyColors.Intro_Text_Color,
                        MyColors.Intro_button_Color
                      ]
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 3),
                        child: Text("Class XXI  D",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3,left: 3),
                        child: Text("Subject :Accounting",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 12),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3,left: 3),
                        child: Text("Submission Date: 10/12/12",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 12),),
                      ),

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        MyColors.Intro_Text_Color,
                        MyColors.Intro_button_Color
                      ]
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
              padding: const EdgeInsets.only(top: 10,left: 3),
                        child: Text("Class XXI  D",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3,left: 3),
                        child: Text("Subject :Mathematics",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 12),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3,left: 3),
                        child: Text("Submission Date: 10/12/12",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 12),),
                      ),

                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
