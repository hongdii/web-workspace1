package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PizzaOrder
 */
@WebServlet("/pizzaOrder.do")
public class PizzaOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PizzaOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String pizza = request.getParameter("pizza");
		
		String[] topings = request.getParameterValues("topings");
		String[] sides = request.getParameterValues("sides");
		
		int price = 0;
		
		switch(pizza) {
		case "콤비네이션피자" : price+=5000; break;
		case "치즈피자" : price+=6000; break;
		case "포테이토피자" :
		case "고구마피자" 	 : price+= 7000; break;
		case "불고기피자" 	 : price+= 8000; break;
		}
		
		if(topings != null) {
			for(String toping : topings) {
				
				switch(toping) {
				case "고구마무스" : price += 1000; break;
				case "콘크림무스" : price += 1500; break;
				case "파인애플토핑" :
				case "치즈토핑" :
				case "치즈바이트" : price += 2000; break;
				case "치즈크러스트" : price += 3000; break;
				}
			}
		}
		
		if(sides != null) {
			for(String side : sides) {
				// 모든 사이드 메뉴 가격이 5000원이라고 설정
				price+= 5000;
			}
		}
		
		request.setAttribute("pizza", pizza);
		request.setAttribute("topings", topings);
		request.setAttribute("sides", sides);
		request.setAttribute("price", price);
		
		// 위임시 필요한 객체 : RequestDispatcher
				// 1) 응답하고자하는 뷰(jsp)를 선택하면서 생성
		RequestDispatcher view = request.getRequestDispatcher("views/pizzaPage.jsp"); 
			 	// context root(/jsp/) 가 항상 자동으로 들어가있음 따라서 /jsp/ 쓰지않기
				
			 	// 2) 포워딩
		view.forward(request, response);
		
		//doGet(request, response); => 남아있으면 GET방식으로 전송됨. 따라서 지워줘야함
	}

}
