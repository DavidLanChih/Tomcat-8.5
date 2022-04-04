<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id='objSayHello' class='bean.SayHello' />
<%
String strMessage;
strMessage = objSayHello.SayHello(" welcome~");
out.println(strMessage);
%>