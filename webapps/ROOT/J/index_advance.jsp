<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>JavaBean進階</title>
</head>
<body>
    <p>
        <input type=button value="get 和 set 實例" onclick=window_get_set()>  
    </p>
    <p>
        <input type=button value="SayHello實例" onclick=window_SayHello()>  
    </p>
</body>
</html>

<script>
function window_get_set()
{
    window.open('set_get.jsp' , 'A', config='height=500,width=500');
}
function window_SayHello()
{
    window.open('SayHello.jsp', 'B', config='height=500,width=500');
}
</script>