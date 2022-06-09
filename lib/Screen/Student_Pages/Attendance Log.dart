import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Home/Schedule_Page.dart';
class AttendanceLog extends StatefulWidget {
  const AttendanceLog({Key? key}) : super(key: key);

  @override
  _AttendanceLogState createState() => _AttendanceLogState();
}

class _AttendanceLogState extends State<AttendanceLog> {
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
        title: Text("ATTENDANCE",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(onTap:()=> _selectDate(context),



                child: Icon(Icons.calendar_today,color: MyColors.Intro_Text_Color,)),
          )
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Container(

              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width*.9,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0XFFf5fafd),
                border: Border.all(width: 1,color: MyColors.Intro_Text_Color,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Accounting",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Period :1",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),
                      Spacer(flex: 1,),
                      Text("Time :10.00AM",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pan_tool_outlined ,color: Colors.green,)
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
                  color: Color(0XFFf5fafd),
                  border: Border.all(width: 1,color: MyColors.Intro_Text_Color,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hindi",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Period :2",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),
                      Spacer(flex: 1,),
                      Text("Time :11.00AM",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pan_tool_outlined ,color: Colors.red,)
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
                  color: Color(0XFFf5fafd),
                  border: Border.all(width: 1,color: MyColors.Intro_Text_Color,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mathematics",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Period :3",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),
                      Spacer(flex: 1,),
                      Text("Time :12.00AM",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 15),),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pan_tool_outlined ,color: Colors.green,)
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
