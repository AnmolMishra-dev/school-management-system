import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:schooling/Screen/Menu/Assignment.dart';
import 'package:file_picker/file_picker.dart';
class UploadAssignment extends StatefulWidget {
  const UploadAssignment({Key? key}) : super(key: key);

  @override
  _UploadAssignmentState createState() => _UploadAssignmentState();
}

class _UploadAssignmentState extends State<UploadAssignment> {
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
        title: Text(" UPLOAD ASSIGNMENT",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),

      body: Column(
        children: [

          Container(
              padding: EdgeInsets.all(20),
              child: DottedBorder(
                color: MyColors.Intro_Text_Color,
                strokeWidth: 3,
                dashPattern: [10,6],

                child: Container(
                    height:250,
                    width: double.infinity,

                  child:InkWell(onTap: () async {

                    var picked = await FilePicker.platform.pickFiles();

                    if (picked != null) {
                      print(picked.files.first.name);
                    }


                  },
                    child: Center(
                      child: Icon(Icons.upload_rounded,size: 40,color: MyColors.Intro_Text_Color,),
                    ),
                  ) ,
                ),
              )
          ),
          InkWell(onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Assignment()),
            );
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: MediaQuery.of(context).size.width*.6,

                height: 45,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          MyColors.Intro_Text_Color,
                          MyColors.Intro_button_Color
                        ]
                    )
                ),
                child: Center(child: Text("Upload",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
