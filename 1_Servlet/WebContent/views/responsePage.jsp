<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 이구문을 스크립틀릿이라고 부르며, html문서내에 자바코드를 쓸 수 있는 영역
	// 현재 이 jsp에서 필요로 하는 데이터들 => request의 attribute영역에 담겨있음
	// request.getAttribute("key") : Object(그에 해당하는 밸류값의 자료형으로 형변환해줘야함)
	String name   = (String)request.getAttribute("name"); // object 모든 객체의 조상이기 때문에 (String)으로 다운캐스팅
	int age 	  = (int)request.getAttribute("age");
	String gender = (String)request.getAttribute("gender");
	String city	  = (String)request.getAttribute("city");
	double height = (double)request.getAttribute("height");
	String[] foods = (String[])request.getAttribute("foods");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h2{color:red;}
	span{font-weight:bold;}
	#name{color:orange;}
	#age{color:yellow;}
	#city{color:green;}
	#height{color:blue;}
	#gender{color:pink;}
	li{color:purple;}
</style>
</head>
<body>
	
	<h2>개인정보 응답화면</h2>
	
	<%-- jsp용 주석
		<%= %> : 자바 변수를 html에서 사용할때 
	 --%>
	<span id='name'><%= name %></span> 님은
	<span id='age'><%= age %></span> 살이며
	<span id='city'><%= city %></span> 에 살고
	<span id='height'><%= height %></span> cm 입니다.
	
	성별은
	<% if(gender == null){ %>
		선택을 안했습니다.	
	<% } else{ %>
		<% if(gender.equals("M")) { %>
			<span id='gender'>남자</span>입니다. <br>
		<% } else { %>
			<span id='gender'>여자</span>입니다. <br>
		<% } %>
	<% } %>
	
	좋아하는 음식은
	<% if(foods == null) { %>
		없습니다.
	<% } else {%>
		<ul>
		<% for(int i=0 ; i<foods.length; i++) { %>
			<li><%= foods[i] %></li>
		<% } %>
		</ul>	
	<% } %>
	
	<%-- jsp는 결국 자바 파일임 
		먼저 java파일로 만들어진 후에 class파일로 변환되어 만들어지기 때문임
	--%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>