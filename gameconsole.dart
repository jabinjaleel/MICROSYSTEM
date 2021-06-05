import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayGame extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: DisplayuserDetailsStateful(title: 'USER DETAILS'),
    );
  }
}

class DisplayuserDetailsStateful extends StatefulWidget {
  DisplayuserDetailsStateful({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  DisplayuserDetailsState createState() => DisplayuserDetailsState();
}

class DisplayuserDetailsState extends State<DisplayuserDetailsStateful> {
  bool _first = true;
  bool val = false;

  void change() {
    setState(() {
      _first = false;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.games),
          title: Text(
            "GAMES",
            style: TextStyle(color: Colors.white),
          ),
          actions: [Icon(Icons.games)],
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.only(bottom: 30),
              color: Colors.blue,
              child: Hero(
                tag: "img",
                child: Image.asset(
                  "images/pic.png",
                  width: double.infinity,
                  height: 300,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                " COMPUTER SCIENCE",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "MonoSpace"),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Computer science is the study of algorithmic",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " computational machines and computation itself.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: ""),
                    ),
                    Text(
                      "science spans a range of topics from theoretical",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            AnimatedCrossFade(
                firstChild: MaterialButton(
                  color: Colors.greenAccent,
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular((10))),
                  child: Text(
                    "SUBSCRIBE",
                    style: TextStyle(
                        fontFamily: "MonoSpace", fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => {change()},
                ),
                secondChild: MaterialButton(
                  color: Colors.redAccent,
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular((10))),
                  child: Text(
                    "SUBSCRIBED",
                    style: TextStyle(
                        fontFamily: "MonoSpace", fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => {},
                ),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1)),

          ])
        ]));
  }
}
