package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.util.*;

import beans.Information;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public static int LoginId=0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		//Customer c=new Customer();
		String email=request.getParameter("email");
		String Psword=request.getParameter("Psword");
		try
		{
		
			String flag=Information.login(email, Psword);
			System.out.println("Login-email:"+email+"psword="+Psword);
		
			
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			RequestDispatcher rd1= request.getRequestDispatcher("signup.jsp");
			
			if(flag=="Noaccount")
			{
				request.setAttribute("inserted", "Please signup");
				rd1.forward(request, response);
			}
			else if(flag=="wrongPassword")
			{
				request.setAttribute("inserted", "Password error");
				rd1.forward(request, response);
			}
			else if(flag=="LoggedIn")
			{
				
			//request.setAttribute("inserted", Information.getname(email));
			System.out.println("Successfully Logged in");
			
				HttpSession session = request.getSession();
				
                                Information a=Information.getProfName(email);
                                String ProfName=a.Prof;
                                session.setAttribute("Prof",ProfName);
                                session.setAttribute("inserted", Information.getname(email));
				//String source2=Customer.getCityName(email);
				//Saving a session for storin Destination for flights
				//session.setAttribute("Destination",source2);
				rd.forward(request, response);
		
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
	}

}
