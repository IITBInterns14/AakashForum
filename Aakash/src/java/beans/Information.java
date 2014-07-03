package beans;

import java.sql.ResultSet;
import java.util.ArrayList;

import database.select;

public class Information
{       public String date;
	public String Prof;
	public String Dept;
	public String sessionId;
	public String Lec;
	public static int noOfProf=0;
	public int lecCount=0;
	public String emailid;
	public String password;
        public String lecPath;
        public String dept;
	
	public static ArrayList<Information> getProf(String Department)throws Exception
	{
		ArrayList<Information> inf=new ArrayList<Information>();
		
		String query="SELECT Distinct Prof FROM department WHERE Dept='"+Department+"';";
		System.out.println(query);
		ResultSet rs= select.execute(query);
		
		while(rs.next())
		{	
			Information a=new Information();
			a.Prof=rs.getString("Prof");
                        System.out.println("Prof="+a.Prof);
		    noOfProf++;
		    inf.add(a);	
		}
		System.out.println("No of prof"+inf.size());
	
		
		return  inf;
	}
	public static ArrayList<Information> getDepartment(String Department)throws Exception
	{
		ArrayList<Information> inf=new ArrayList<Information>();
		
		String query="SELECT Distinct Prof FROM department WHERE Dept='"+Department+"';";
		System.out.println(query);
		ResultSet rs= select.execute(query);
		
		while(rs.next())
		{	
			Information a=new Information();
			a.Prof=rs.getString("Prof");
                        System.out.println("Prof="+a.Prof);
		    noOfProf++;
		    inf.add(a);	
		}
		System.out.println("No of prof"+inf.size());
	
		
		return  inf;
	}

    /**
     *
     * @param Department
     * @return
     * @throws Exception
     */

	public static ArrayList<Information> getDeptList()throws Exception
	{
		ArrayList<Information> j=new ArrayList<Information>();
		
		String query="SELECT Distinct dept from deptlist;";
		System.out.println(query);
		ResultSet rs= select.execute(query);
		
		while(rs.next())
		{	
			Information a=new Information();
		   a.dept=rs.getString("dept");
		    j.add(a);	
		}
	
		
		return  j;
	}
 
        	public static ArrayList<Information> getLec(String Prof)throws Exception
{
ArrayList<Information> i=new ArrayList<Information>();

String query="SELECT Distinct Lecture,lecpath,date FROM lec WHERE Prof='"+Prof+"';";
System.out.println(query);
ResultSet rs= select.execute(query);

while(rs.next())
{	
Information a=new Information();
a.Lec=rs.getString("Lecture");
a.lecPath=rs.getString("lecpath");
a.date=rs.getString("date");
i.add(a);	
}
System.out.println("No of lec"+i.size());


return i;
}
        public static int getLecCount(String Prof)throws Exception
	{
		int i=0;
		
		String query="SELECT Distinct Lecture,lecpath FROM lec WHERE Prof='"+Prof+"';";
		System.out.println(query);
		ResultSet rs= select.execute(query);
		
		while(rs.next())
		{	
	i++;
                }
	
		
		return  i;
	}
        
	public  static Information getProfName(String email) throws Exception
	{	
            Information i=new Information();
		String query="Select name from login where login.id='"+email+"'; ";
		ResultSet rs=select.execute(query);
		if(rs.next())
		{		i.Prof=rs.getString("name");
                                
                }
                return i;
        }
	public  static String login(String email,String Psword) throws Exception
	{	
		String pl="p";
		System.out.println("Input Password "+Psword);
		
		String query="Select password from login where login.id='"+email+"'; ";
		ResultSet rs=select.execute(query);
		if(rs.next())
		{		pl=rs.getString("password");
                                
		System.out.println("database password="+pl);
		if(Psword.contentEquals(pl))
		{	System.out.println("ok");
		return "LoggedIn";
			
					
		}
		else
		{System.out.println("ok");
		
		return"wrongPassword";
		}
			
		}
		
		else
		{	System.out.println("noaccount");
			return "Noaccount";
			
	
		
	}

	}
	public static String getname(String email)throws Exception
	{
		String name;
		String query="select name from login where login.id='"+email+"';";
		ResultSet rs=select.execute(query);
		if(rs.next())
		{
			name=rs.getString("name");
			return name;
			
		}
		else
			return "unknown";
		
	}
    
	
}
