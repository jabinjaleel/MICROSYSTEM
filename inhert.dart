import 'dart:io';
class subject
{
	String subname="";
	int subid=0;
	subject(String subname,int subid)
	{
		this.subid=subid;	
		this.subname=subname;
	}	
	void read()
	{
		print("Enter the subject name");
		subname=stdin.readLineSync().toString();
		print("Enter the subject id");
		subid=int.parse(stdin.readLineSync().toString());
	}
	void display()
	{
		print("Subject name:"+subname);
		print("Subject Id:"+subid.toString());
	}
}
class exam1 extends subject
{
	String ques="",choice1="",choice2="";
	exam1(String ques,String choice1,String choice2,String subname,int subid):super(subname,subid)
	{
		
		this.ques=ques;
		this.choice1=choice1;
		this.choice2=choice2;
	}
	void qread()
	{
		print("Enter the question");
		ques=stdin.readLineSync().toString();
		print("Enter choice 1");
		choice1=stdin.readLineSync().toString();
		print("Enter choice 2");
		choice2=stdin.readLineSync().toString();
	}
	void qdisp()
	{
		print("Question:"+ques);
		print("Choice 1:"+choice1);
		print("Choice 2:"+choice2);
	}	
}

class result1 extends exam1
{
	String result="";
	result1(String result,String ques,String choice1,String choice2,String subname,int subid):super(ques,choice1,choice2,subname,subid)
	{
		this.result=result;
	}
	void rdisp()
	{
		print("result:"+result);
	}
}
class exam2 extends subject
{
	String quest="",ans="";
	exam2(String quest,String ans,String subname,int subid):super(subname,subid)
	{
		this.quest=quest;
		this.ans=ans;
	}
	void adisp()
	{
		print("Question:"+quest);
		print("Answer:"+ans);
	}
}

void main()
{
	
	exam2 ex2=new exam2("What","ANSW","s",1);
	exam1 ex1=new exam1("Q","c","c","s",1);
	ex1.read();
	ex1.display();
	ex1.qdisp();
	ex2.read();
	ex2.display();
	ex2.adisp();
	
}