package com.sist.data;

import com.sist.dao.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;



import sun.security.krb5.internal.crypto.crc32;
 
public class GameData {
 
    public static void main(String[] args) {
 
    	GameData selTest = new GameData();
        selTest.crawl();
        
    }
 
    //WebDriver
    private ChromeDriver driver;
    private WebElement webElement;
    
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "C:/webDev/webDriver/chromedriver.exe";
    
    //긁어올 페이지 URL
    //private String base_url;
    
    public GameData() {
        super();
 
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         options.setCapability("ignoreProtectedModeSettings", true);
         driver = new ChromeDriver(options);
         //base_url = "https://store.steampowered.com/search/?l=koreana&sort_by=Released_DESC&tags=128";
    }
 
    public void crawl() {
    	GameVO vo=new GameVO();
        
    	try 
        {	
        	//int[] category = {492,19,21,597,599,9,122,4182,113,701,3871,4166,699,3859,1664};
        			
            driver.get("https://store.steampowered.com/search/?l=koreana&sort_by=Released_DESC&tags=128");
            
            JavascriptExecutor js = (JavascriptExecutor) driver;
            
            webElement = driver.findElement(By.className("global_action_link"));
            webElement.click();
          
            webElement = driver.findElement(By.id("input_username"));
            webElement.clear();
            webElement.sendKeys("dltjrwn10125");
            
            webElement = driver.findElement(By.id("input_password"));
            webElement.clear();
            webElement.sendKeys("Tkddyd1234");
            Thread.sleep(1000);
            
            webElement = driver.findElement(By.className("btnv6_blue_hoverfade"));
            webElement.click();
            Thread.sleep(3000);
            
            //정렬기준 : 연관성	
            webElement = driver.findElement(By.id("sort_by_trigger"));
            webElement.click();
            Thread.sleep(1000);
            webElement = driver.findElement(By.id("_ASC"));
            webElement.click();
            Thread.sleep(2000);
            
            for(int i=0; i<=1; i++)
            {
            js.executeScript("window.scrollTo(0, document.body.scrollHeight);");
            Thread.sleep(500);
            }
            
            for(int m=1; m<=30; m++)
            {
            	WebElement link = driver.findElementByXPath("//*[@id=\"search_resultsRows\"]/a["+m+"]");
            	WebElement price = driver.findElementByXPath("//*[@id=\"search_resultsRows\"]/a["+m+"]/div[2]/div[4]/div[2]");

                //디테일 링크가져오기
                String dLink=link.getAttribute("href");
                //한글 페이지 가져오는 과정1
                String[] split = dLink.split("/");
                //한글 페이지 가져오는 과정2
                String klink=split[0]+"/"+split[1]+"/"+split[2]+"/"+split[3]+"/"+split[4]+"/_/?l=koreana";
                //한글페이지 출력
                System.out.println(klink);
                //한글페이지에서 정보 가져오기
                Document doc=Jsoup.connect(klink).get();
                
                
                //카테고리 정보 
                //cetegory
                /*
                   	인디 492
					액션 19
					어드벤처 21
					캐주얼 597
					시뮬레이션 599 
					전략 9 
					롤플레잉 122
					싱글 플레이어 4182
					무료 113
					스포츠 701
					2D 3871
					분위기 있는 4166 
					레이싱 699
					멀티플레이어 3859
					퍼즐 1664
                 */
                
                try {
	
                Element title=doc.selectFirst("div.apphub_AppName");
                System.out.println("이름 : "+title.text());
                
                Element date=doc.selectFirst("div.date");
                System.out.println("발매일 : "+date.text());
                
                Element summary=doc.selectFirst("div#developers_list");
                System.out.println("개발자 : "+summary.text());
                
                Element comment=doc.selectFirst("div.game_area_description");
                System.out.println("내용 : "+comment.text());
                
                try 
                {
                	Element movie=doc.selectFirst("div.highlight_movie");
                	System.out.println("비디오 : "+movie.attr("data-mp4-hd-source"));
				} catch (Exception e) 
                {
					System.out.println("비디오 : 데이터 없음");
				}
                //==================================================================
                //동영상, 없으면 에러
   	                
   	            //System.out.println(movie.attr("data-mp4-hd-source"));
   	            //==================================================================
   	            
             
                Elements poster=doc.select("div.screenshot_holder a");
                String poster2=poster.get(0).attr("href");
              	for(int j=1;j<poster.size();j++)
              	{
                	String img=poster.get(j).attr("href");
                	poster2=poster2+","+img;
                	
              	}
                System.out.println("포스터 모음 : "+poster2);
                
                
                //태그는 최대 8개 까지만?
                Elements tags=doc.select("div.glance_tags a:lt(7)");
                String tags2=tags.get(0).text();
                for(int j=1;j<tags.size();j++)
              	{
                	String tag=tags.get(j).text();
                	tags2=tags2+","+tag;
                	
              	}
                System.out.println("태그 모음 : "+tags2);
                
                
                //할인 전, 후 가격은 ₩단위로 자르면 될 듯
                System.out.println("가격 : "+price.getText());
                
                //사양
                try 
                {
                //최소사양
                Elements sys1=doc.select("div.game_area_sys_req_leftCol ul li");
	                String mini =sys1.get(0).text();
                	for(int i=1; i< sys1.size(); i++)
	                {
                		mini = mini+","+sys1.get(i).text();
	                }
	                System.out.println("<최소 시스템> : "+mini);
                
                //권장사양
                Elements sys2=doc.select("div.game_area_sys_req_rightCol ul li");
	                String recom =sys2.get(0).text();
	            	for(int i=1; i< sys2.size(); i++)
	                {
	            		recom = recom+","+sys2.get(i).text();
	                }
	                System.out.println("<권장 시스템> : "+recom);
                }
                catch (Exception ex) 
                {
                	//최소사양만 기재되어 있을 때
                	Elements sys=doc.select("div.game_area_sys_req_full ul li");
                	String mini =sys.get(0).text();
                	for(int i=1; i< sys.size(); i++)
	                {
                		mini = mini+","+sys.get(i).text();
	                }
	                System.out.println("<시스템> : "+mini);
				}
                
                
                
                //이 게임에 대한 사용자 평가 606개 중 75% 가 긍정적입니다.
                // 평가 
                try {
                		Elements opinion1 = doc.select("div#review_histogram_rollup_section span.game_review_summary");
                		
                		String opinion=opinion1.attr("data-tooltip-html");
                		
                		//205,921
                		//String opinion_cnt=opinion.substring(opinion.indexOf("가")+2,opinion.indexOf("개"));
                		//String like_cnt=opinion.substring(opinion.indexOf("중")+2,opinion.lastIndexOf("가")-2);
                		
                		//int like=(int) (Integer.parseInt(opinion_cnt)*(Double.parseDouble(like_cnt)*0.01));
                		//int hate=Integer.parseInt(opinion_cnt)-like;
                		
                		//System.out.println("좋아요 : "+like);
                		//System.out.println("싫어요 : "+hate);
                		
				} catch (Exception e) {
						System.out.println("점수존재하지 않음");
				}
                
                
                System.out.println("====================================");
                }
                catch (Exception ex) {
					System.err.println("★★★★★★★★★★★★★★★★데이터 없음★★★★★★★★★★★★★★★");
					System.out.println("====================================");
                	continue;
					
				}
          
            }

        } 
        catch (Exception e) 
        {
        	e.printStackTrace();
        
        } 
        finally 
        {
            //driver.close();
        }
 
    }
 
}
