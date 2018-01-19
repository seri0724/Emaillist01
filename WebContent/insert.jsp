<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.EmaillistVo"%>
<%@ page import = "com.javaex.dao.EmaillistDao"%>
<% 
request.setCharacterEncoding("UTF-8");

String lastName = request.getParameter("ln");
String firstName = request.getParameter("fn");
String email = request.getParameter("email");

EmaillistVo vo = new EmaillistVo(1, lastName, firstName, email);

EmaillistDao dao = new EmaillistDao();
dao.insert(vo);

response.sendRedirect("list.jsp");
/*
System.out.println(lastName);
System.out.println(firstName);
System.out.println(email);
*/
%>
