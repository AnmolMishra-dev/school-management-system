import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Home/Schedule_Page.dart';
class ScheduleClass extends StatefulWidget {
  const ScheduleClass({Key? key}) : super(key: key);

  @override
  _ScheduleClassState createState() => _ScheduleClassState();
}

class _ScheduleClassState extends State<ScheduleClass> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(

        context: context,

        initialDate: currentDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
        print(currentDate);
      });
  }
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
        title: Text("SCHEDULE CLASS",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Class Name",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                    ),enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                  ),)),
              SizedBox(height: 20,),
              Text("Subject",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                    ),enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                  ),)),
              SizedBox(height: 20,),
              Text("Date-Time",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
              TextField(
                  decoration: InputDecoration(
                    suffixIcon: InkWell(onTap:()=> _selectDate(context),



                        child: Icon(Icons.calendar_today,color: MyColors.Intro_Text_Color,)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                    ),enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                  ),)),

              Padding(
                padding: const EdgeInsets.only(top: 30),
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
            ],
          ),
        ),
      ),
    );
  }
}
