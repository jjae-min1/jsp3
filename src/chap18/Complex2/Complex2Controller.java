package chap18.Complex2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Complex2Controller
 */
@WebServlet("/Complex2")
public class Complex2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex2Controller() {
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
		
		Object resultObject = null;
		ModelInterface model = null;
//  인터페이스의 객체를 생성해서 조건에따라 해당하는 클래스의 객체를 받고 해당 클래스의
//		메소드 실행
		if(type == null || type.equals("greeting")) {

			model = new Model1();
			
		}else if(type.equals("date")) {
			model = new Model2();
			
		}else {
			resultObject="invalid Type";
		}
		
		resultObject = model.execute();
		
		
//		4.request나 session에 저장
		request.setAttribute("result",resultObject);
		
//		5.view 로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/SimpleView.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	

}