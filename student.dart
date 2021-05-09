import 'dart:io';
class student
{
	String name="",email="",place="",address="",depart="";
	int phn=0,rollno=0;
	student()
	{
		this.email="";
		this.name=name;
		this.email=email;
		this.place="";
		this.depart="";
		this.phn=0;
		this.rollno=0;
	}
	void reg()
	{
		print("Enter the name of student");
		name=stdin.readLineSync().toString();
		
		
		print("Enter email");
		email=stdin.readLineSync().toString();
		
		
		print("Enter the place");
		place=stdin.readLineSync().toString();

		print("Enter the roll no");
		rollno=int.parse(stdin.readLineSync().toString());

		

		print("Enter the phone no");
		phn=int.parse(stdin.readLineSync().toString());
	}
	void disp()
	{

		print("Name: " + name);
   		print("Roll Number: " + rollno.toString());
    		print("Place: " + place);
        	print("Email: " + email);
   		print("Phone Number: " + phn.toString());
	}
	void edit()
	{
		print("Enter the choice");
		print("1.NAME");
		print("2.ROLL NUMBER");
		print("3.PLACE");
		print("4.EMAIL");
		print("5.NUMBER");
		int ch=int.parse(stdin.readLineSync().toString());
		if(ch==1)
		{
			print("Enter the new name");
			String nm=stdin.readLineSync().toString();
			name=nm;
			print("Change Sucess");
		}
		else if(ch==2)
		{
			print("Enter the new roll number");
			int rl=int.parse(stdin.readLineSync().toString());
			rollno=rl;
			print("change Sucess");
		}
		else if(ch==3)
		{
			print("Enter the new place");
			String nm=stdin.readLineSync().toString();
			place=nm;
			print("Change Sucess");
		}
		else if(ch==4)
		{
			print("Enter the new email");
			String nm=stdin.readLineSync().toString();
			email=nm;
			print("Change Sucess");
		}
		else if(ch==2)
		{
			print("Enter the new phone number");
			int rl=int.parse(stdin.readLineSync().toString());
			phn=rl;
			print("Change Sucess");
		}
	}
}
