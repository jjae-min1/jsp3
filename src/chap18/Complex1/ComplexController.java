package chap18.Complex1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ComplexControl
 */
@WebServlet("/Complex")
public class ComplexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplexController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//  1.http요청받기
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		2.요구기능 파악(request 객체로부터 사용자의 요청을 파악)
		String type = request.getParameter("type");
		
//		3. 요청한 기능 수행
		Object resultObject = "null";
		if(type == null || type.equals("greeting")) {
//			해당 모델을 통해 작업 수행
			Model1 m1 = new Model1();
			resultObject = m1.method1();
			
		}else if(type.equals("date")) {
			Model2 m2 = new Model2();
			resultObject = m2.doModel2();
		}else {
			resultObject="invalid Type";
		}
		
//		4.request나 session에 저장
		request.setAttribute("result",resultObject);
		
//		5.view 로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/SimpleView.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	

}
