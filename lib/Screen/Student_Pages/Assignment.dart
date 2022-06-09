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
              padding: EdgeInsets.all(10),
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

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text("Accounting",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Submission Date: 10/04/2020",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                      Text("To: Manish",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),

                    ],
                  ),
                  Spacer(flex: 1,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.file_download,color: Colors.white,size: 25,)
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(10),
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

                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hindi",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Submission Date: 11/04/2020",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                      Text("To:Rahul",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),

                    ],
                  ),
                  Spacer(flex: 1,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.file_download,color: Colors.white,size: 25,)
                    ],
                  )

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
