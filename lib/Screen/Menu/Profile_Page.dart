import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  TextEditingController School = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Subject= TextEditingController();
  List profile=[
    {"email":"Email",
      "emailid":"xyz@email.com",
      "icon":Icons.mail_outline,
    },
    {"email":"Subject",
      "emailid":"Mathematics",
      "icon":Icons.book_outlined,
    },
    {"email":"School/University",
      "emailid":"Holy Ganges Public School",
      "icon":Icons.store_mall_directory_outlined,
    },



  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    top: true,
      child: Scaffold(

        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    MyColors.BackGround_Color1,
                    MyColors.Text_Coloe_white,


                  ]
                )
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,height: 100,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        CircleAvatar(
                          backgroundColor:  Color(0XFFf1fbfa),
                          radius: 50,
                          backgroundImage: AssetImage("assets/teacher.png"),
                        ),
                        Positioned(top: 80,
                          left: 35,
                          child: Container(
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(50)
                            ),

                            width: 30,height: 30,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Center(child: Icon(Icons.add,color: MyColors.Intro_Text_Color,)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Hi,Srishti",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 18,),)
                ],
              ),
              ),
              Container(width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.6,color: MyColors.Text_Coloe_white,

              child:     Padding(
                padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                child: ListView.builder(
                itemCount: profile.length,
      itemBuilder: (BuildContext context,int index){
      return
        Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                               Icon(profile[index]["icon"],color: MyColors.Intro_button_Color,),Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(

                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(profile[index]["email"],style: TextStyle(fontSize: 18,color: MyColors.Intro_button_Color,fontWeight: FontWeight.bold,),),
                                      Text(profile[index]["emailid"],style: TextStyle(fontSize: 18,color: MyColors.Intro_button_Color,),)
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ),
                         InkWell(onTap: (){
                           showDialog(
                             context: context,
                             builder: (BuildContext context) {
                               return Expanded(
                                 child: AlertDialog(

                                   content: SingleChildScrollView(
                                     scrollDirection: Axis.vertical,
                                     child: Container(
                                       height: MediaQuery.of(context).size.height*.6,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Email",style: TextStyle(color: MyColors.Intro_button_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                                           TextField(
                                             controller: Email,
                                               decoration: InputDecoration(
                                                 focusedBorder: OutlineInputBorder(
                                                   borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                                 ),enabledBorder: OutlineInputBorder(
                                                 borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                               ),)),
                                           SizedBox(height: 20,),
                                           Text("Subject",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                                           TextField(
                                             controller:Subject ,
                                               decoration: InputDecoration(
                                                 focusedBorder: OutlineInputBorder(
                                                   borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                                 ),enabledBorder: OutlineInputBorder(
                                                 borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                               ),)),
                                           SizedBox(height: 20,),
                                           Text("School/University ",style: TextStyle(color: MyColors.Intro_Text_Color,fontSize: 18,fontWeight: FontWeight.bold),),
                                           TextField(
                                             controller:School ,
                                               decoration: InputDecoration(
                                                 focusedBorder: OutlineInputBorder(
                                                   borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                                 ),enabledBorder: OutlineInputBorder(
                                                 borderSide: BorderSide(color: MyColors.Intro_Text_Color, width: 1.0),
                                               ),)),
                                           InkWell(onTap: (){
                                             setState(() {
                                               profile[0]["emailid"]=Email.text;
                                               profile[1]["emailid"]=Subject.text;
                                               profile[2]["emailid"]=School.text;


                                             });
                                             Navigator.pop(context);
                                           },
                                             child: Padding(
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
                                                 child: Center(child: Text("Sign In",style: TextStyle(color: MyColors.Text_Coloe_white,fontSize: 20,fontWeight:FontWeight.bold),)),
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),

                                 ),

                               );
                             },
                           );


                         },child: Icon(Icons.edit,color: MyColors.Intro_button_Color,))
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child:   Container(width: MediaQuery.of(context).size.width*.8,height: 1,

                          color: Colors.grey.shade300),
                    )
                  ],
                );})
              ),

              )
            ],
          ),
        ),

      ),
    );
  }
}
