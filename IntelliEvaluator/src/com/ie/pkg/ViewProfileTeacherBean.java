package com.ie.pkg;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ViewProfileTeacherBean{
	private String fname;
	private String lname;
	private String tid;
	private String email;
	private String dobstr;
	public ViewProfileTeacherBean(String tid)
	{
		this.tid=tid;
	}
	public ViewProfileTeacherBean(String fname, String lname, String tid, String email, String dobstr)
	{
		this.fname=fname;
		this.lname=lname;
		this.tid=tid;
		this.email=email;
		this.dobstr=dobstr;
	}
	public String getFname() 
	{
		return fname;
	}
	public void setFname(String fname) 
	{
		this.fname = fname;
	}
	public String getLname() 
	{
		return lname;
	}
	public void setLname(String lname)
	{
		this.lname = lname;
	}
	public String getTid()
	{
		return tid;
	}
	public void setTid(String tid) 
	{
		this.tid = tid;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}
	public String getDobstr() 
	{
		return dobstr;
	}
	public void setDobstr(String dobstr) 
	{
		this.dobstr = dobstr;
	}
	public void viewData()
	{
		ResultSet rs=null;	
	 try
		{
		DatabaseConnect db=new DatabaseConnect();
		Connection con= db.getDBConnection();
		String query="Select tfname,tlname,temail,tdob from teacher where teacherid=?";
		PreparedStatement pt = con.prepareStatement(query);
		pt.setString(1,tid);
		rs=pt.executeQuery();
		while(rs.next())
		{
			 fname=(rs.getString(1));
			lname		 =(rs.getString(2));
			 email=(rs.getString(3));
			 Date d=(rs.getDate(4));
			 dobstr=d.toString();
			 		 
		}
		}
	    catch(SQLException ex){Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);} 
	}
	}
	
