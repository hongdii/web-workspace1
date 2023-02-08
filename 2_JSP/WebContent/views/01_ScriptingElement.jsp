<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립팅 원소</title>
</head>
<body>
	
	<!-- HTML용 주석 : 개발자도구에 노출됨 -->
	<%-- JSP 주석 : 개발자도구에 노출이 안됨 --%>
	
	<h1>스크립팅 원소</h1>
	
	<%
		// 스크립틀릿 : 이 안에 일반적인 자바 코드 작성(변수 선언, 초기화, 제어문)
		
		int sum = 0;
	
		for(int i=0 ; i<=100 ; i++){
			sum += i;
		}
		System.out.println("덧셈결과는 ? " + sum);
	%>
	
	<p>
		화면으로 출력하고자 한다면<br>
		스크립틀릿을 이용해서 출력 가능 : <% out.println(sum); %> <br>
		표현식(출력식)으로 출력 가능 : <%= sum %>
	</p>
	
	<%
		// 배열(객체 -> heap영역안에 저장) 사용
		String[] name = {"오현지", "민경민", "홍길동", "김갑생"};
	%>
	
	<h5>배열의 길이 : <%= name.length %></h5>
	<%--주소값 출력됨 
		<%= name %> == <%= name.toString() %>
	--%>
	<%= name %> <br> 
	
	<%-- 배열의 요소 출력 --%>
	<%= String.join(",", name) %>	
	
	<h4>반복문을 통해 html요소를 반복적으로 화면에 출력</h4>
	<ul>
		<% for(int i=0 ; i<name.length ; i++) { %>
			<li><%= name[i] %></li> <%-- <%=  %> 안에는 하나만 기술 가능 --%>
		<% } %>
	</ul>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>