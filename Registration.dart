import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tree/Database/AnimalDetail.dart';
import 'package:tree/pages/addSubject.dart';
import 'package:tree/pages/view.dart';
import 'package:tree/widgets/button.dart';
import 'package:tree/widgets/textFields.dart';

class DisplayRegister extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: DisplayRegisterStateful(title: 'Flutter Demo Home Page'),
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
  final id = TextEditingController();
  final type = TextEditingController();
  final code = TextEditingController();
  final breed = TextEditingController();
  final color = TextEditingController();
  final section = TextEditingController();

  void submit() {

    var id1 = id.text;
    int id2=int.parse(id1);
    var type1 = type.text;
    var code1 = code.text;
    var breed1 = breed.text;
    var color1 = color.text;
    var section1 = section.text;
    AnimalDetail an=new AnimalDetail(id2, code1, color1, section1, breed1, type1);
    var a=AnimalDbProvider.adb.insertDb(an);
    print(a);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "REGISTRATION",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(children: [
                DisplayTextfield(
                  con: id,
                  label: "Animal ID",
                  i1: Icons.perm_identity,
                ),
                DisplayTextfield(
                  con: type,
                  label: "Type",
                  i1: Icons.merge_type,
                ),
                DisplayTextfield(
                  con: code,
                  label: "Code",
                  i1: Icons.code,
                ),
                DisplayTextfield(
                  label: "Breed",
                  i1: Icons.style,
                  con: breed,
                ),
                DisplayTextfield(
                  label: "Color",
                  i1: Icons.color_lens_outlined,
                  con: color,
                ),
                DisplayTextfield(
                    con: section,
                    label: "Section Id",
                    i1: Icons.perm_identity_sharp)
              ]),
            ),
            SizedBox(
              height: 15,
            ),
            OutlineButton(borderSide: BorderSide(color: Colors.purple,),

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () => {submit()},
              child: Text(
                "SUBMIT",
                style: TextStyle(color: Colors.white),

              ),
            )
          ],
        ),
      )),
    ])
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
