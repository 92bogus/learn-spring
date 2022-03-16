<%--
  Created by IntelliJ IDEA.
  User: SHINHO
  Date: 2022-03-16
  Time: 오후 3:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="com.bogus.learningspring.HelloSpring" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
    HelloSpring helloSpring = context.getBean(HelloSpring.class);

    out.println(helloSpring.sayHello("Root Context"));
%>
</body>
</html>
