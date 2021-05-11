import 'dart:io';

class exam {
  int examid = 0;
  void reg() {
    print("Enter the examid");
    examid = int.parse(stdin.readLineSync().toString());
  }

  var ques = new List.filled(0, {}, growable: true);
  void addsingle() {
    var mp = new Map();
    print("Enter question");
    mp["question"] = stdin.readLineSync().toString();
    print("Enter first choice");
    mp["1"] = stdin.readLineSync().toString();
    print("Enter second choice");
    mp["2"] = stdin.readLineSync().toString();
    print("Enter the third choice");
    mp["3"] = stdin.readLineSync().toString();
    print("Enter the fourth choice");
    mp["4"] = stdin.readLineSync().toString();
    ques.add(mp);
  }

  void addbulk() {
    int i;
    print("Enter the number of question");
    int l = int.parse(stdin.readLineSync().toString());
    for (i = 1; i <= l; i++) {
      addsingle();
    }
  }

  void disp() {
    print("ExamId: " + examid.toString());
    print(ques);
  }
}
