<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pizza = (String)request.getAttribute("pizza");
	String[] topings = (String[])request.getAttribute("topings");
	String[] sides = (String[])request.getAttribute("sides");
	int price = (int)request.getAttribute("price");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pizzaPage</title>
<style>
	#pOrder{
		color: red;
	}
	#tOrder{
		color: green;
	}
	#sOrder{
		color: blue;
	}
	span{
		font-size: 20px;
		font-weight: bolder;
	}
	#happy{
		color:pink;
	}
	#price{
		text-decoration: underline;
	}
</style>
</head>
<body>
	<h2>주문 내역</h2>

	<span id='pizza'>피자는 <span id="pOrder"><%= pizza %></span></span>, 
	<span id='topings'>토핑은 <span id="tOrder">
		<% if(topings == null) { %>
				없고,
		<% } else {%>
				
			<%= String.join(", ", topings) %>
			<% } %></span>
	</span>
	<span id='sides'>사이드는 
		<span id="sOrder">
			<% if(sides == null) { %>
					없습니다.
				<% } else {%>
					<%= String.join(", ", sides) %>
				<% } %>
		</span> 주문하셨습니다.
	</span>
	<br><br>
	
	<span>총합 : <span id="price"><%= price %>원</span></span>
	
	<br><br>
	
	<h2 id="happy">즐거운 식사시간 되세요 ~</h2>
</body>
</html>