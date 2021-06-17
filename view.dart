import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree/Database/AnimalDetail.dart';

class DisplayAnimal extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: DisplayRegisterStateful(title: 'Details'),

    );
  }
}

class DisplayRegisterStateful extends StatefulWidget {
  DisplayRegisterStateful({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  DisplayRegisterState createState() => DisplayRegisterState();
}

class DisplayRegisterState extends State<DisplayRegisterStateful> {
  @override
  var display;
  void initState() {
     display=AnimalDbProvider.adb.viewAnimal();
     print(display);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: FutureBuilder<List<AnimalDetail>>(
            //itemCount: 1,
          future: AnimalDbProvider.adb.viewAnimal(),

            builder: (context, content)
            {
              List<AnimalDetail>? an3=content.data;
              return ListView.builder(itemCount:an3?.length,itemBuilder: (context,index){
                return   Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF736AB7),
                              borderRadius:
                              BorderRadius.all(Radius.circular(25))),
                          width: 350,
                          height: 110,
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 20, left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.account_circle_rounded,

                                        //size: 40,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(an3![index].id.toString(),style: TextStyle(color: Colors.white)),
                                      SizedBox(width: 60,),
                                      Icon(Icons.color_lens),
                                      SizedBox(width: 5,),
                                      Text(an3[index].color,style: TextStyle(color: Colors.white),),
                                      SizedBox(width: 50,),
                                      Icon(Icons.merge_type),
                                      SizedBox(width: 5,),
                                      Text("Section:",style: TextStyle(color: Colors.white30),)
                                    ],
                                  )),
                              Container(
                                  padding: EdgeInsets.only(left: 13, top: 20),
                                  child: Row(children: [
                                    Icon(
                                      Icons.code,
                                      //size: 40,
                                    ),SizedBox(width: 5,),
                                    Text(an3[index].code,style: TextStyle(color: Colors.white30)),
                                    SizedBox(width: 40,),
                                    Icon(Icons.border_all),
                                    SizedBox(width: 5,),
                                    Text(an3[index].breed,style: TextStyle(color: Colors.white30),),
                                    SizedBox(width: 40,),
                                    Icon(Icons.home_work_outlined),
                                    SizedBox(width: 5,),
                                    Text(an3[index].section,style: TextStyle(color: Colors.white30),)
                                  ])),

                            ],
                          )),
                    ]));
              });

            })

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
