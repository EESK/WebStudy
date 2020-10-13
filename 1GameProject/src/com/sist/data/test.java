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
			Document doc = Jsoup.connect("https://store.steampowered.com/search/?supportedlang=koreana&tags=492&category1=998").get();
			Elements price=doc.select("div.search_price");
			
			for(int i=1;i<price.size();i++)
			System.out.println(price.get(i-1).text());
			
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
	public static void main(String[] args) 
	{
		test a=new test();
		a.test();
	}
}