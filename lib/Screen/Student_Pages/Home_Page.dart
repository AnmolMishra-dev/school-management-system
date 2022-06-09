import 'package:flutter/material.dart';
import 'package:schooling/Const/Const.dart';

import 'package:schooling/Screen/Student_Pages/Menu_page.dart';
import 'package:schooling/Screen/Student_Pages/Profile.dart';
import 'package:schooling/Screen/Student_Pages/Schedule.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
DateTime currentDate = DateTime.now();
class _HomeState extends State<Home> {



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

  int _index = 1;

  @override
  Widget build(BuildContext context) {
    Widget ?page;
    switch (_index) {
      case 0:
        page = profile();
        break;
      case 1:
        page = Schedule();

        break;
      case 2:
        page = MenuHome();
        break;
    }

    return Scaffold(
      backgroundColor: Colors.white,

      body: SizedBox.expand(child: page),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.Text_Coloe_white,
unselectedItemColor: Colors.white38,
        backgroundColor: MyColors.Intro_Text_Color,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("profile")),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp), title: Text("Schedule")),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), title: Text("Menu")),
        ],
      ),
    );
  }
}
