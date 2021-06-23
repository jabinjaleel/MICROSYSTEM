import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageStateful(title: ''),
    );
  }
}

class HomePageStateful extends StatefulWidget {
  HomePageStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePageStateful> {
  List<Color> clr = [Colors.white, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 30, left: 10),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.blue, Colors.lightBlueAccent]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu,
                    size: 25,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                  child: AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  ColorizeAnimatedText("MICROLECTURE MOBILE LEARNING SYSTEM",
                      textStyle: TextStyle(color: Colors.white, fontSize: 18),
                      colors: clr),
                  FadeAnimatedText("An Advanced E-Learning Platform",
                      textStyle: TextStyle(color: Colors.white, fontSize: 15)),
                  RotateAnimatedText("LEARN",
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Horizon",
                          fontSize: 30)),
                  RotateAnimatedText("THINK",
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Horizon",
                          fontSize: 30)),
                  RotateAnimatedText("BUILD",
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Horizon',
                          fontSize: 30)),
                ],
              )),
            ])),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 15),
                  width: 400,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(children: [
              Text(
                "Subjects",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MonoSpace"),
              ),
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 60),
          child: Row(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Physics",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.purple, Colors.blue]),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Physics",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.cyan, Colors.cyanAccent]),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Chemistry",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.green, Colors.lightGreen]),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 60),
          child: Row(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Maths",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.deepOrange, Colors.orange]),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.deepPurple, Colors.purpleAccent]),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Hindi",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.purpleAccent, Colors.blue]),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
        )
      ],
    ));
  }
}
