import 'dart:io';
import 'student.dart';
import 'exam.dart';
import 'subject.dart';

void main() {
  menu();
}

menu() {
  int ch = 0;

  while (ch != 3) {
    ch = choice();
    if (ch == 1) {
      student st = new student();
      var mainlist = new List.filled(0, student(), growable: true);
      int a = 0;
      while (a != 4) {
        a = studentmenu();
        if (a == 1) {
          student st = new student();
          st.reg();
          mainlist.add(st);
        } else if (a == 2) {
          int i;
          print("Enter the name of student to be edited");
          String nm = stdin.readLineSync().toString();
          int l = mainlist.length;
          for (i = 0; i < l; i++) {
            if (mainlist[i].name == nm) {
              mainlist[i].edit();
            }
          }
        } else if (a == 3) {
          int i;
          int l = mainlist.length;
          for (i = 0; i < l; i++) {
            mainlist[i].disp();
            print("_______________________");
          }
        }
      }
    } else if (ch == 2) {
      subject sj = new subject();
      exam ex = new exam();
      var mainlist2 = new List.filled(0, subject(), growable: true);
      var mainlist3 = new List.filled(0, exam(), growable: true);
      int b = 0;
      while (b != 10) {
        b = adminmenu();
        if (b == 1) {
          sj.read();
          mainlist2.add(sj);
        } else if (b == 2) {
          sj.addbulkchapter();
          mainlist2.add(sj);
        } else if (b == 3) {
          sj.addsingletopic();
          mainlist2.add(sj);
        } else if (b == 4) {
          sj.disp();
        } else if (b == 5) {
          sj.topicsearch();
        } else if (b == 6) {
          ex.reg();
          mainlist3.add(ex);
        } else if (b == 7) {
          ex.addbulk();
          mainlist3.add(ex);
        } else if (b == 8) {
          ex.addsingle();
          mainlist3.add(ex);
        } else if (b == 9) {
          ex.disp();
        }
      }
    }
  }
}

choice() {
  print("Enter the choice");
  print("1:Student");
  print("2.Admin");
  print("3.Exit");
  int ch = int.parse(stdin.readLineSync().toString());
  return ch;
}

studentmenu() {
  print("Enter the choice");
  print("1.registration");
  print("2.Edit");
  print("3.view");
  print("4.Back");
  int ch = int.parse(stdin.readLineSync().toString());
  return ch;
}

adminmenu() {
  print("Enter the choice");
  print("1.Subject Registration");
  print("2.Add Multiple Topic ");
  print("3.Add Single Topic");
  print("4.View Subject Details");
  print("5.Search topic");
  print("6.Exam Registration");
  print("7.Add Multiple Question");
  print("8.Add single Question");
  print("9.View Exam Details");
  print("10.Back");
  int ch = int.parse(stdin.readLineSync().toString());
  return ch;
}
