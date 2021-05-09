import 'dart:io';
class subject
{
	String sname="",sid="";
	var topic=new Map();
	subject()
	{
		this.sname=sname;
		this.sid=sid;
	}
	void read()
	{
		print("Enter the name of subject");
		sname=stdin.readLineSync().toString();
		print("Enter subject id");
		sid=stdin.readLineSync().toString();
		

			
	}
	void addbulkchapter()
	{
		int i;
		print("Enter the number of chapter");
		int n=int.parse(stdin.readLineSync().toString());
		int l=topic.length;
		for(i=l+1;i<=l+n;i++)
		{
			print("Enter Chapter "+i.toString()+ "Topic");
			String tp=stdin.readLineSync().toString();
			topic[i]=tp;
		}
	}
	void addsingletopic()
	{
		
		int l=topic.length;
		int i=l+1;
		print("Enter the chapter name");
		String cp=stdin.readLineSync().toString();
		topic[i]=cp;
		
	}
	void disp()
	{
		print("Subject name:"+sname);
		print("subject Code:"+sid);
		print("Subject topic");
		print(topic);
	}
	void topicsearch()
	{
		print("Enter the chapter number");
		int ch=int.parse(stdin.readLineSync().toString());
		print(topic[ch]);
	}
}
