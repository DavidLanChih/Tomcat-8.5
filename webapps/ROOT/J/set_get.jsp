<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="StudentsBean" class="com.runoob.StudentsBean" />
<html>
<head>
    <title>get 和 set 實例</title>
</head>
<body>
    <jsp:useBean id="students" class="com.runoob.StudentsBean"> 
        <jsp:setProperty name="students" property="firstName" value="智"/>
        <jsp:setProperty name="students" property="lastName" value="藍"/>
        <jsp:setProperty name="students" property="age" value="35"/>
    </jsp:useBean>
    <p>學生姓名: 
        <jsp:getProperty name="students" property="lastName"/>
    </p>
    <p>學生名字: 
        <jsp:getProperty name="students" property="firstName"/>
    </p>
    <p>學生年齡: 
        <jsp:getProperty name="students" property="age"/>
    </p>
</body>
</html>