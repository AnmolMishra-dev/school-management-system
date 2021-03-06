import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';

import 'Home_Page.dart';



class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  List Period=[
    {
      "period":"Accounting",
      "Teacher":"Manish",

      "time":"09:00 AM"
    },
    {
      "period":"Hindi",
      "Teacher":"Priya",

      "time":"10:00 AM"
    },
    {
      "period":"Mathematics",
      "Teacher":"Raju",

      "time":"11:00 AM"
    },
    {
      "period":"Biology",
      "Teacher":"Sia",

      "time":"12:00 AM"
    },
    {
      "period":"Physics",
      "Teacher":"Bria",

      "time":"01:00 PM"
    },
    {
      "period":"Chemistry",
      "Teacher":"Naian",

      "time":"02:00 PM"
    },


  ];

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("YOUR SCHEDULE",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(onTap:()=> _selectDate(context)



                ,child: Icon(Icons.calendar_today,color: MyColors.Intro_Text_Color,)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10,left: 15),
            child: Text("Today",style: TextStyle( color: MyColors.Intro_Text_Color,fontSize: 22,fontWeight: FontWeight.bold),),
          ),


          Container(
            height: MediaQuery.of(context).size.height-250,
            child: Expanded(
              child: ListView.builder(
                  itemCount:Period.length ,
                  itemBuilder: (BuildContext context,int index){
                    return
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10,top: 10),
                            child: Container(
                              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 5),
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:  MyColors.Intro_Text_Color

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Period[index]["period"].toString(),style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text("Time: ${Period[index]["time"]}",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                                    ],),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text("By: ${Period[index]["Teacher"]}",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 15),),
                                  ),




                                ],),
                            ),
                          ),
                          Period[index]["period"]=="Mathematics"?   Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Container(
                                    height: 80,

                                    child: Image.asset("assets/lunch.png")),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Lunch Time",style: TextStyle(color: MyColors.Intro_Text_Color),),
                                )
                              ],
                            ),
                          ):Container()
                        ],
                      );}),
            ),
          )


        ],),
    );
  }
}
