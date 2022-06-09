import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';
import 'package:schooling/Screen/Home/Schedule_Page.dart';
class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  final MySubject= TextEditingController();
  List subject=["Hindi","English","Physics",
    "Chemistry",
    "Biology",
    "Others"
  ];
  String newsubject="";
bool textfiled=false;
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
        title: Text("Account Details",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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

                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                        TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                              ),enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),)),
                      ],),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text("Subject",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                    Wrap(

            direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 10.0,
                runSpacing: 10.0,
                      children:  List.generate(subject.length,(index) {
                        return


                          InkWell(
                            onTap: (){
                              if(subject[index]=="Others"){
                                setState(() {
                                  textfiled=true;
                                });
                              }

                            },
                            child: Container(width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: MyColors.Intro_Text_Color,
                                    width: 1,
                                  )),
                              child: Center(
                                  child: Text(subject[index], style: TextStyle(
                                      color: MyColors.Intro_Text_Color,
                                      fontSize: 20,fontWeight: FontWeight.bold),)),),
                          );



                      })

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(children: [
                        textfiled?TextField(

                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.grey.shade500,fontSize: 20),
                              hintText: "Type here",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                              ),enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),)):Container()

                      ],),
                    )



                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 30),
                  child: Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("School/University ",style: TextStyle(color: MyColors.Intro_Text_Color,fontWeight: FontWeight.bold,fontSize: 20),),
                        TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                              ),enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color:MyColors.Intro_Text_Color, width: 1.0),
                            ),)),
                      ],),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
