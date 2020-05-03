<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>敏感词过滤</title>
</head>
<body>

	<form action="FilterWordServlet" method="post">
	<input type="text" name="word"/>
	<input type="submit" value="过滤敏感词"/>
	
	
	</form>

</body>
</html>