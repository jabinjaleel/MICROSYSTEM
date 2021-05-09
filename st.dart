import 'dart:io';
class student
{
	
	String name="";
	student()
	{
		print("Enter the name");
		name=stdin.readLineSync().toString();
	}
	
	void disp()
	{
		print(name);
	}
}

