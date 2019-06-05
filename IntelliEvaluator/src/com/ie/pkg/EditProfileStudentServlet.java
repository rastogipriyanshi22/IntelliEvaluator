package com.ie.pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EditProfileStudentServlet
 */
@WebServlet("/EditProfileStudentServlet")
public class EditProfileStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfileStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);  
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        HttpSession session=request.getSession(false);
        String fname=request.getParameter("FirstName");
        String lname=request.getParameter("LastName");
        String email=request.getParameter("FromEmailAddress");
        String pass=request.getParameter("pass1");
        
        
		String rollno=(String)session.getAttribute("rollno");
		System.out.println(rollno);
		StudentSignupBean tvb=new StudentSignupBean(rollno);
		if(!fname.equals(null) ||!fname.equals(""))
		{
		  tvb.updateFname(fname);
		  System.out.println(fname);
		}
		if(lname!=null && !lname.equals("")){
		tvb.updateLname(lname);
		System.out.println(lname);}
		if(email!=null && !email.equals("")){
		tvb.updateEmail(email);
		System.out.println(email);}
		if(pass!=null &&!pass.equals("")){
		tvb.updatePassword(pass);}
	    	RequestDispatcher rd= request.getRequestDispatcher("studenthome.jsp");
	        //session.setAttribute("tvb1", tvb);	
	    	rd.forward(request, response);
		
        
        
	}

}
