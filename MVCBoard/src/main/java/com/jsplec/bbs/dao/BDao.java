package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class BDao {
	//Dao는 DB 연결   (userid/ passwd 등 context.xml에 저장해뒀음 이제 불러오자
	//DB는 자바가 아님 so, try catch 하자
	
	DataSource dataSource;
	
	public BDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc");
			System.out.println("db연결 완료");
		}catch(Exception e){
			System.out.println("db연결 실패");
			e.getStackTrace();
		}
		
		
		
	}
	//BDAo는 전체내용을 읽어오는게 필요 (전체내용은 어레이리스트로 넘김)
	//한줄에 여러가지 타입 받겠다 하면 Bean으로 만들어서 어레이리스트로 받아야함
	public ArrayList<BDto> list(){
		ArrayList<BDto> dtos = new ArrayList<BDto>();// 생성자를 만들어줌 클라스이므로  //전역변수 하기 위해 위로 뺌
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		
		try {
			connection = dataSource.getConnection(); //context 연결
			
			String query = "select bId, bName, bTitle, bContent, bDate from mvc_board";
			
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			//while문을 통해서 
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId");  //위의 쿼리문에 있는 bId 컬럼이름임
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate);  
				dtos.add(dto); //어레이리스트는 메모리에 있음 (이를 jsp 에서 불러오면 됨), cpu는 메모리와 대화함
				System.out.println("데이터 로드 성공");
				
			}
			
			
		}catch(Exception e) {
			System.out.println("데이터 로드 실패");
			e.printStackTrace();
			//정상적이든, 에러가 걸리든 무조건 final로 와라 
		}finally{
			try {
				if(resultSet !=null) resultSet.close();
				if(preparedStatement !=null) preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
		}
		return dtos;
		
	}
	//stak 방식, que 방식
	
	
	//write do 
	
	public void write(String bName, String bTitle, String bContent ) {
	
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "insert into mvc_board (bName, bTitle, bContent, bDate) values (?,?,?,now())";
			
			preparedStatement = connection.prepareStatement(query);
			
			
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("데이터 로드 실패");
			e.printStackTrace();
			//정상적이든, 에러가 걸리든 무조건 final로 와라 
		}finally{
			try {
				if(preparedStatement !=null) preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
		}

		
	}//write 메소드 end
	
	
	//content_view (검색해 오는 것)
	//한줄만 가져오면 되므로, 어레이 리스트는 필요없고, bean 만 필요하다
	public BDto contentView(String strID) {
		
		BDto dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		
		try {
			connection = dataSource.getConnection();
			//id가 키값임
			String query = "select * from mvc_board where bId = ?"; //select 문장에 ?하는건 처음일거임 보안상 이렇게 하는게 좋다!
			
			//프리페어스테이트먼트를 쓰므로 스테이트먼트 필요없음 둘중 하나만 쓰면 됨
			preparedStatement = connection.prepareStatement(query);
			//아이디를 숫자로 받자 
			preparedStatement.setInt(1, Integer.parseInt(strID));
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				int bId = resultSet.getInt("bId");  //위의 쿼리문에 있는 bId 컬럼이름임
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate);  
				System.out.println("데이터 로드 성공");
				
			}
			
			
		}catch(Exception e) {
			System.out.println("데이터 로드 실패");
			e.printStackTrace();
			//정상적이든, 에러가 걸리든 무조건 final로 와라 
		}finally{
			try {
				if(resultSet !=null) resultSet.close();
				if(preparedStatement !=null) preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
		}
		return dto; //내가 받은 데이터를 리턴해주면 됨
		
	
	}//content_view end
	
	
	//---------------------------------수정 해보기
	public void modify(String bId ,String bName, String bTitle, String bContent) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			//update때는 values가 안먹힐때 있음
			String query = "update mvc_board set bName = ?, bTitle = ?, bContent = ? where bId = ? ";
			
			preparedStatement = connection.prepareStatement(query);
			
			
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setString(4, bId);
			
			preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("데이터 로드 실패");
			e.printStackTrace();
			//정상적이든, 에러가 걸리든 무조건 final로 와라 
		}finally{
			try {
				if(preparedStatement !=null) preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
		}

		
	}//modify 메소드 end
	
	//---------------------------------삭제 해보기
	
	public void delete(String bId) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		
		try {
			connection = dataSource.getConnection();
			
			String query = "delete from mvc_board where bId= ?"; //삭제는 꼭 where 을 주기
			
			preparedStatement = connection.prepareStatement(query);
			
			preparedStatement.setString(1, bId);//쿼리문 첫번째에다가 bId를 넣어줘
			
			preparedStatement.executeUpdate();
			
		}catch(Exception e) {
			System.out.println("데이터 로드 실패");
			e.printStackTrace();
			//정상적이든, 에러가 걸리든 무조건 final로 와라 
		}finally{
			try {
				//close해줘야 데이터가 쌓이지 않음
				if(preparedStatement !=null) preparedStatement.close();
				if(connection !=null) connection.close();
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			
		}

		
	}//modify 메소드 end
	
	
	
	
}//end
