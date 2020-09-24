package com.sist.dao;
import java.util.*;
import java.sql.*;

public class EmpDAO {
	//����Ŭ ����
	private Connection conn;
	//sql ���� ����
	private PreparedStatement ps;
	//����Ŭ �ּ� ����
	private final String URL="jdbc:oracle:thin:@211.238.142.181:1521:XE";
	
	//����Ŭ���� => ����̹��� ��� (������ ����=>������)
	public EmpDAO()
	{
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {}
	}
	//����
	public void getConnection() 
	{
		try
		{
			conn=DriverManager.getConnection(URL,"hr","happy");
		}catch(Exception ex) {}
	}
	//�ݱ�
	public void disConnection()
	{
		try
		{
			if(ps!=null)
            ps.close();
			if(conn!=null)
            conn.close();
		}catch(Exception ex) {}
	}
	
	public ArrayList<EmpVO> empListData()
	{
		ArrayList<EmpVO> list=new ArrayList<EmpVO>();
		
		try {
				getConnection();
				String sql="SELECT empno, ename, job, hiredate, sal FROM emp";
				
				//����
				ps=conn.prepareStatement(sql);
				//������ �� �ޱ�
				ResultSet rs=ps.executeQuery();
				while (rs.next()) 
				{
					EmpVO vo=new EmpVO();
					vo.setEmpno(rs.getInt(1));
					vo.setEname(rs.getString(2));
					vo.setJob(rs.getString(3));
					vo.setHiredate(rs.getDate(4));
					vo.setSal(rs.getInt(5));
					
					list.add(vo);
				}
				rs.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		finally
		{
			disConnection();
		}
		return list;
	}

	//��ȭ��� ������ ����
	public ArrayList<String> movieGetPoster()
	{
		ArrayList<String> list=new ArrayList<String>();
		
		try 
		{
			getConnection();
			String sql="SELECT poster, rownum FROM daum_movie WHERE rownum<=10";
			
			ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			rs.close();
			
		} catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			disConnection();
		}
		
		
		return list;
	}

	//
	public ArrayList<MovieVO> movieListData()
	{
		ArrayList<MovieVO> list=new ArrayList<MovieVO>();
		try 
		{
			getConnection();
			String sql="SELECT no,title,poster,director,actor,genre FROM daum_movie ORDER BY no";
			
			ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while (rs.next()) 
			{
				MovieVO vo=new MovieVO();
				vo.setMno(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPoster(rs.getString(3));
				vo.setDirector(rs.getString(4));
				vo.setActor(rs.getString(5));
				vo.setGenre(rs.getString(6));
				
				list.add(vo);
			}
			rs.close();
			
		} catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			disConnection();
		}
		return list;
	}
}