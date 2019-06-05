package com.ie.pkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ScoreBean {
	
	private String topic;
	private String rollno;
	private int spellerror;
	private int grammerror;
	private int relevance;
	private int wordcount;
	private int score;
	private String remark;
	
	public ScoreBean(String rollno)
	{
		this.rollno=rollno;
	}
	
	public ScoreBean(String topic,String rollno)
	{
		this.rollno=rollno;
		this.topic=topic;
	}
	public ScoreBean(String topic,String rollno,int spellerror,int grammerror,int relevance,int wordcount,int score,String remark)
	{
		this.setTopic(topic);
		this.setRollno(rollno);
		this.setSpellerror(spellerror);
		this.setGrammerror(grammerror);
		this.setRelevance(relevance);
		this.setWordcount(wordcount);
		this.setScore(score);
		this.setRemark(remark);
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getRollno() {
		return rollno;
	}

	public void setRollno(String rollno) {
		this.rollno = rollno;
	}

	public int getSpellerror() {
		return spellerror;
	}

	public void setSpellerror(int spellerror) {
		this.spellerror = spellerror;
	}

	public int getGrammerror() {
		return grammerror;
	}

	public void setGrammerror(int grammerror) {
		this.grammerror = grammerror;
	}

	public int getRelevance() {
		return relevance;
	}

	public void setRelevance(int relevance) {
		this.relevance = relevance;
	}

	public int getWordcount() {
		return wordcount;
	}

	public void setWordcount(int wordcount) {
		this.wordcount = wordcount;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public ArrayList<String> getTopicList()
	{
		ResultSet rs=null;
		ArrayList<String> topiclist=new ArrayList<String>();
		try
		{
		DatabaseConnect db=new DatabaseConnect();
		Connection con= db.getDBConnection();
		String query="select essaytopic from score where rollno=? ";
		PreparedStatement pt = con.prepareStatement(query);
		pt.setString(1, rollno);
		rs=pt.executeQuery();
		while(rs.next())
		{
		    topiclist.add(rs.getString(1));
		    
		}
		}catch(SQLException ex){Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);}
		return topiclist;
	}
	
	public ArrayList getResultList()
	{
		ResultSet rs=null;
		ArrayList<ScoreBean> resultlist=new ArrayList<ScoreBean>();
		try
		{
		DatabaseConnect db=new DatabaseConnect();
		Connection con= db.getDBConnection();
		String query="select * from score where rollno=? and essaytopic=? ";
		PreparedStatement pt = con.prepareStatement(query);
		pt.setString(1, rollno);
		pt.setString(2, topic);
		rs=pt.executeQuery();
		while(rs.next())
		{
			 String topic=rs.getString(1);
			 String rollno=rs.getString(2);
			 int spellerror=rs.getInt(3);
			 int grammerror=rs.getInt(4);
			 int relevance=rs.getInt(5);
			 int wordcount=rs.getInt(6);
			 int score=rs.getInt(7);
			 String remark=rs.getString(9);
			ScoreBean sb=new ScoreBean(topic,rollno,spellerror,grammerror,relevance,wordcount,score,remark);
		    resultlist.add(sb);
		    
		}
		return resultlist;
		}catch(SQLException ex){Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);}
		return resultlist;
	}
	
}
