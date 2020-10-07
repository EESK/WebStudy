package com.sist.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GameDAO {
	 private static SqlSessionFactory ssf;
	   // 자동 초기화 => 블록
	   static 
	   {
		   try
		   {
			   // 파일 읽기
			   Reader reader=Resources.getResourceAsReader("Config.xml");
			   // XML 파싱 => 필요한 데이터를 저장한다 
			   ssf=new SqlSessionFactoryBuilder().build(reader);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
	   }
	
	 public static void boardInsert(GameVO vo)
	   {
		   SqlSession session=null;
		   try
		   {
			   session=ssf.openSession(true);
			   session.insert("gameInsert",vo);
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   if(session!=null)
				   session.close();
		   }
	   }
	 
	 
	 
}
