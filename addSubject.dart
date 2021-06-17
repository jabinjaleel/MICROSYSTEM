import 'package:flutter/material.dart';
import 'package:tree/pages/Registration.dart';
import 'package:tree/pages/editanimaldetails.dart';
import 'package:tree/pages/view.dart';
import 'package:tree/widgets/floatinButton.dart';
import 'package:tree/widgets/textFields.dart';

class ADDSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AddSubjectStateful(),
    );
  }
}

class AddSubjectStateful extends StatefulWidget {
  AddSubjectStateful({
    Key? key,
  }) : super(key: key);



  @override
  AddSubjectState createState() => AddSubjectState();
}

class AddSubjectState extends State<AddSubjectStateful> {
  int selectedindex = 0;
  final List<Widget> bod = [DisplayRegister(),DisplayAnimal(),DisplayDetails()];
  void onTabTapped(int index)
  {
    setState(() {
selectedindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
      body: bod[selectedindex],
            bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded,
                  size: 30, color: Colors.white60),
              title: Text(
                "Register",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.pages_rounded,
                  color: Colors.white60, size: 30),
              title: Text(
                "View",
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white60,
                  size: 30,
                ),
                title: Text(
                  "Edit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),


        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.greenAccent,
        onTap: onTabTapped,
        backgroundColor: Colors.black,
      ),

    );
  }
}
