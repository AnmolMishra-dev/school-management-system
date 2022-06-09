import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Teacher_Pages/Account_Details_Page.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body:Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(top: 22),
           child: Container(
             width: MediaQuery.of(context).size.width,
             height: 60,
             decoration: BoxDecoration(

               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   MyColors.Intro_Text_Color,
                   MyColors.Text_Coloe_white,

                 ]
               )
             ),
             child:Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: InkWell(onTap: (){
                     Navigator.pop(context);

                   },child: Icon(Icons.arrow_back_ios,color: MyColors.Text_Coloe_white,)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: InkWell(onTap: (){
                     Navigator.pop(context);

                   },child: Icon(Icons.chat_bubble_outline,color: MyColors.Text_Coloe_white,)),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15),
                   child: InkWell(onTap: (){
                     Navigator.pop(context);

                   },child: Text("Chat",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight: FontWeight.bold),)),
                 ),

               ],
             ) ,

           ),
         ),

         Padding(
           padding: const EdgeInsets.only(top: 15),
           child: Container(
             width: MediaQuery.of(context).size.width*.8,
             child: TextField(
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                   ),enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                 ),)),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
           child: Column(

             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Container(
                     child: Row(
                       children: [
                         CircleAvatar(
                           radius: 25,
                           backgroundImage: NetworkImage("data:image/jpeg;base64,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"),

                         ),Padding(
    padding: const EdgeInsets.only(left: 10),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Jon",style: TextStyle(fontSize: 20,color: MyColors.Intro_button_Color,fontWeight: FontWeight.bold),),
                               Text("You : will look into it")
                             ],
                           ),
                         )
                       ],
                     ),

                   ),
                   Container(width: 20,height: 20,
                   decoration: BoxDecoration(
                       color: Colors.greenAccent,
                     borderRadius: BorderRadius.circular(15)
                   ),
                  child: Center(child: Text("1")),)
                 ],
               ),

Padding(
  padding: const EdgeInsets.only(top: 5),
  child:   Container(width: MediaQuery.of(context).size.width*.8,height: 1,

  color: Colors.grey.shade300),
)
             ],
           ),
         ),





       ],

     ) ,

    );
  }
}
