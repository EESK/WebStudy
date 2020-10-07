package com.sist.data;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;



public class test {
	
	public void test()
	{
		
		try 
		{
				Document doc=Jsoup.connect("https://store.steampowered.com/app/648800/_/?l=koreana").get();
				Element event=doc.selectFirst("div.early_access_announcements");
                System.out.println("이벤트 : "+event);
		}
		catch (Exception e) 
		{
			// TODO: handle exception
		}
	}
	
	public String print() throws IOException
	{
		Document doc=Jsoup.connect("https://store.steampowered.com/app/648800/_/?l=koreana").get();
		Element comment=doc.selectFirst("div.game_area_description");
        //System.out.println("내용 : "+comment.html());
        return comment.html();
	}
	
	public static void main(String[] args) 
	{
		test a=new test();
		a.test();
	}
}