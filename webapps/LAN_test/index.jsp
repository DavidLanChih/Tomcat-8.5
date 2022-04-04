<%@ page contentType = "text/html" pageEncoding="UTF-8"%> 
<%@page import="java.util.*" %>
<%@page import="java.awt.Graphics" %>
<%@page import="java.lang.Object"%>
<%@page import="java.awt.Component"%>
<%@page import="java.awt.Container"%>
<%@page import="java.awt.Window"%>
<%@page import="java.awt.Frame"%>
<%@page import="javax.swing.JFrame" %>


<%! //設定變數
    int a = 1;
    String b ="這是JAVA的字串變數";

    class Inner{}
%>
<%!
    java.util.ArrayList pTitleArr=new java.util.ArrayList();   
    public void show() 
    {
        for (int i=1; i<5; i++)
        {
            pTitleArr.add(i);
        }
    }
%>

<%!
    class ABC
    {
        JFrame frame = new JFrame("我的frame");
    }
    public void showframe() 
    {
        //frame.setSize(300,300);
        //frame.setVisible(true);
    }
    class DrawLineFrame extends JFrame {
        DrawLineFrame frame = new DrawLineFrame(); // 建立窗體類別的實例
        //frame.setVisible(true); // 顯示窗體
    }
    
/*
    public DrawLineFrame() {
        //super(); // 呼叫超類別的建構方法
        setTitle("繪製直線"); // 窗體標題
        setBounds(100, 100, 273, 167); // 窗體的顯示位置和大小
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // 窗體關閉方式
        add(linePanel); // 將面板類別的實例增加到窗體容器中
    }*/
    public void paint(Graphics g) {    // 重新定義paint()方法
            g.drawLine(70, 50, 180, 50);   // 繪製第一條水平線
            g.drawLine(70, 80, 180, 80);   // 繪製第二條水平線
            g.drawLine(110, 10, 140, 120); // 繪製斜線
        }
%>

<div>
    <% showframe();/*leeten.Date JDate=new leeten.Date();*/%>
</div>
<div>
    <%=a %>. <%=b %>
</div>
<div>
    2. 這是套用JAVA方法取出來的值:<% show(); %> <%=pTitleArr %>
</div>
<div>
    3. 從JAVA變數轉換為JSP變數:<% //String TitleArr [] =ApTitleArr 
    %>
</div>
<div>
    <input type=button value=彈跳警示視窗 onclick=openalert()>  
</div>
<div>
    <input type=button value=藍智出生日期 onclick=opendate()>
</div>
<div>
    <input type=button value=跳轉Doc資料區 onclick=doc_home()>
</div>
<div>
    <input type=button value=清除JAVA取的值 onclick=clear()>
</div>
<div>
    <input type=button value=累加JAVA取的值 onclick=show()>
</div>

<script>
function openalert()
{
    alert("HI~");
}

function opendate()
{
    var Y         =  new Date().getFullYear();                                 //取得目前西元"年"
    var M         =  new Date().getMonth()+1;                                  //取得目前西元"月"
    var D         =  new Date().getDate();                                     //取得目前西元"日"
    var today     =  Y+"/"+M+"/"+D;                                                                                   
    var d1        =  Date.parse(today);                                        //將日期變成毫秒
    var LAN_birth =  "1986/06/02";
    var d2        =  Date.parse(LAN_birth);                                                                      
    var diff_day  =  (d1.valueOf()-d2.valueOf())/(1000*60*60*24);	           //將兩個日期(毫秒)相減，再換成天數
    
    alert('藍智從出生至今已經:'+diff_day+"天");
}

function doc_home()
{
    window.location.href='/docs/';
}

function show()
{
    alert("<%=pTitleArr %>");
}

</script>


<style>
    div
    {
        height:30px;
    }
</style>