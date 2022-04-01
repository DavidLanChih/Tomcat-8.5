<%@ page contentType = "text/html" pageEncoding="UTF-8"%> 
<%@page import="java.util.*" %>
<%! //設定變數
    int a = 1;
    String b ="這是JAVA的字串變數";

    class Inner{}
%>
<%!
    java.util.ArrayList pTitleArr=new java.util.ArrayList();   
    public void show() 
    {
        pTitleArr.add("123");
    }
%>

<div>
    <%=a %>. <%=b %>
</div>
<div>
    2. 這是套用JAVA方法取出來的值:<% show(); %> <%=pTitleArr %>
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

</script>


<style>
    div
    {
        height:30px;
    }
</style>