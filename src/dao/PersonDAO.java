package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PersonDTO;


public class PersonDAO {

	private static PersonDAO instance;
	
	
	public synchronized static PersonDAO getInstance() {
		if(instance == null) {
			instance = new PersonDAO();
		}
		return instance;
	}
	private PersonDAO() {
		
	}
	
	
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	
	// 삽입 기능  -- 이름과 내용
	 public int insert(String name, String contact) throws Exception {
	      String sql="insert into person values(person_std.nextval,?,?)";

	      try(
	            Connection con=this.getConnection();
	            PreparedStatement pstat =con.prepareStatement(sql);){

	         pstat.setNString(1, name);
	         pstat.setString(2,contact);
	         int result =pstat.executeUpdate();
	         con.commit();
	         return result;
	      }
	   }
	 
	 // 읽기 기능 -- 리스트 사용
	   public List<PersonDTO> selectAll()throws Exception {
	      String sql="select * from person order by 1";
	      List<PersonDTO> list = new ArrayList<>();

	      try(
	            Connection con=this.getConnection();
	            PreparedStatement pstat =con.prepareStatement(sql);
	            ResultSet rs = pstat.executeQuery();){
	         while(rs.next()) {
	            int id = rs.getInt("id");
	            String name = rs.getNString("name");
	            String contact =rs.getNString("contact");	   
	            list.add(new PersonDTO(id,name,contact));
	         }
	         return list;
	      }

	   }
	   
	   // 삭제 기능 -- ID 로
	   public int delete(int delid) throws Exception{
		   String sql = "delete from pserson where id = ?";
		   try(Connection con = this.getConnection();
				   PreparedStatement pstat = con.prepareStatement(sql)){
			   pstat.setInt(1, delid);
			   int result = pstat.executeUpdate();
			   con.commit();
			   return result;
		   }
	   }
	   
	   // 수정 기능 -- 이름, 내용 , id 로
	   public int modify(PersonDTO dto) throws Exception{
		   String sql = "update person set name=?, contact=? where id=?";
		   try(Connection con = this.getConnection();
				   PreparedStatement pstat = con.prepareStatement(sql)){
			   pstat.setString(1, dto.getName());
			   pstat.setString(2, dto.getContact());
			   pstat.setInt(3, dto.getId());
			   int result = pstat.executeUpdate();
			   con.commit();
			   return result;
		   }
	   }

	}