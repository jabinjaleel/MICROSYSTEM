import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets5/gameconsole.dart';
void main()
{
  runApp(DisplayHomePage());
}

class DisplayHomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DisplayHomePageStateful(title: 'SUBJECTS'),
    );
  }
}

class DisplayHomePageStateful extends StatefulWidget {
  DisplayHomePageStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  DisplayHomePageState createState() => DisplayHomePageState();
}

class DisplayHomePageState extends State<DisplayHomePageStateful> {
  bool val = true;
  bool val1 = true;
  bool val2 = true;
  bool val3 = true;
  bool val4 = true;
  bool val5 = true;

  void game(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DisplayGame()));
  }

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
          backgroundColor: Colors.black87,
          title: Text("HOME"),
          actions: [MaterialButton(onPressed:()=>{game(context)},child:
          Hero(tag: 'img',
              child:
              Image.asset(
                "images/pic.png",
                height: 37,
                width: 37,
              )))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.black87),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 50,
                  )),
              ListTile(
                leading: MaterialButton(
                  child: Icon(Icons.supervised_user_circle),
                  //onPressed: () => {home(context)},
                  minWidth: 20,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: MaterialButton(
                  minWidth: 20,
                  child: Icon(Icons.message),
                  onPressed: () => {},
                ),
                title: Text("Message",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: MaterialButton(
                  child: Icon(Icons.settings),
                  onPressed: () => {},
                  minWidth: 20,
                ),
                title: Text("Settings",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10, top: 35),
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Welcome User,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Copperplate"),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      "Select An Option,",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                          fontFamily: "Copperplate"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      "Main Menu,",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Copperplate"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      //alignment: Alignment.topLeft,

                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              val = !val;
                              if (val1 == false) {
                                val1 = !val;
                              } else if (val2 == false) {
                                val2 = !val2;
                              } else if (val3 == false) {
                                val3 = !val3;
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            // padding: EdgeInsets.only(left: 55),
                            //margin: EdgeInsets.only(top: 40),
                            decoration: BoxDecoration(
                                color:
                                val ? Colors.blueGrey : Colors.greenAccent),
                            // color: Colors.black38,
                            width: val ? 170 : 180,
                            height: val ? 170 : 180,
                            //  alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.list_alt_outlined,
                                  size: 70,
                                  color: Colors.pinkAccent,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "LIST",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ))),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          val1 = !val1;
                          if (val == false) {
                            val = !val;
                          } else if (val2 == false) {
                            val2 = !val2;
                          } else if (val3 == false) {
                            val3 = !val3;
                          }
                          else if(val4==false)
                          {
                            val4=!val4;
                          }
                          else if(val5==false)
                          {
                            val5=!val5;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                            color: val1 ? Colors.blueGrey : Colors.greenAccent),
                        width: val1 ? 170 : 180,
                        height: val1 ? 170 : 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event_note,
                              size: 70,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "NOTES",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      //alignment: Alignment.topLeft,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              val2 = !val2;
                              if (val1 == false) {
                                val1 = !val1;
                              } else if (val == false) {
                                val = !val;
                              } else if (val3 == false) {
                                val3 = !val3;
                              }
                              else if(val4==false)
                              {
                                val4=!val4;
                              }
                              else if(val5==false)
                              {
                                val5=!val5;
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            // padding: EdgeInsets.only(left: 55),
                            //margin: EdgeInsets.only(top: 40),
                            decoration: BoxDecoration(
                                color: val2
                                    ? Colors.blueGrey
                                    : Colors.greenAccent),
                            // color: Colors.black38,
                            width: val2 ? 170 : 180,
                            height: val2 ? 170 : 180,
                            //  alignment: Alignment.topCenter,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_circle_rounded,
                                  size: 70,
                                  color: Colors.purpleAccent,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "PROFILE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ))),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          val3 = !val3;
                          if (val1 == false) {
                            val1 = !val;
                          } else if (val2 == false) {
                            val2 = !val2;
                          } else if (val == false) {
                            val = !val;
                          }
                          else if(val4==false)
                          {
                            val4=!val4;
                          }
                          else if(val5==false)
                          {
                            val5=!val5;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                            color: val3 ? Colors.blueGrey : Colors.greenAccent),
                        width: val3 ? 170 : 180,
                        height: val3 ? 170 : 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              size: 70,
                              color: Colors.orangeAccent,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "SETTINGS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      val4 = !val4;
                      if (val1 == false) {
                        val1 = !val1;
                      } else if (val2 == false) {
                        val2 = !val2;
                      } else if (val3 == false) {
                        val3 = !val3;
                      } else if (val == false) {
                        val = !val;
                      }
                      else if(val5==false)
                      {
                        val5=!val5;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                        color: val4 ? Colors.blueGrey : Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: val4?365:375,
                    height: val4 ? 50 : 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SUBJECTS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      val5 = !val5;
                      if(val1==false)
                      {
                        val1=!val;
                      }
                      else if(val2==false)
                      {
                        val2=!val2;
                      }
                      else if(val3==false)
                      {
                        val3=!val3;
                      }
                      else if(val==false)
                      {
                        val=!val;
                      }
                      else if(val4==false)
                      {
                        val4=!val4;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                        color: val5 ? Colors.blueGrey : Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: val5?365:375,
                    height: val5 ? 50 : 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SUBSCRIPTION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
