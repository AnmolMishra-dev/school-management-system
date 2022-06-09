import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
class PreviousLecture extends StatefulWidget {
  const PreviousLecture({Key? key}) : super(key: key);

  @override
  _PreviousLectureState createState() => _PreviousLectureState();
}

class _PreviousLectureState extends State<PreviousLecture> {
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
        title: Text("PREVIOUS SESSION ",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search,color: MyColors.Intro_Text_Color,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 15),
              child: Text("Today ",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                color: MyColors.Intro_Text_Color,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Accounting",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),),
                        Padding(
                            padding: const EdgeInsets.only(top: 5),
                          child: Text("By Manish",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                        ),

                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_forward_ios,color: MyColors.Text_Coloe_white,)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
