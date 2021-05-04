import 'dart:io';
class great
{
	int a=0;
	great(int a)
	{
		this.a=a;
		
		
	}
	
}
void main()
{
	great g=new great(10);
	great g1=new great(5);
	if(g.a>g1.a)
	{
		print(g.a.toString()+" is greater");

	}
	else
	{
		print(g1.a.toString()+" is greater");
	}
}