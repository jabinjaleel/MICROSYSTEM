import 'package:flutter/material.dart';
import 'package:mbls/pages/homePage.dart';
import 'package:mbls/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedindex = 0;
  final List<Widget> bod = [HomePage(),ProfileDisplay()];
  void onTabTapped(int index)
  {
    setState(() {
selectedindex=index;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: bod[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work_outlined,
                color: Colors.black
                ,),
              title: Text(
                "Home",
                style:
                TextStyle( color: Colors.black),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book,
                color: Colors.black,),
              title: Text(
                "Courses",
                style:
                TextStyle( color: Colors.black),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subject,
                color: Colors.black,

              ),
              title: Text(
                "Exam",
                style: TextStyle(

                  color: Colors.black,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                color: Colors.black,),
              title: Text(
                "Settings",
                style:
                TextStyle( color: Colors.black),
              )),



        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.greenAccent,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
      ),

    );
  }
}
