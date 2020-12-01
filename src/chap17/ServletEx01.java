package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* 클라이언트로 부터 요청을 받으면 우리는 Servlet클래스를 잘 설정하고

 * 객체만 만들어주면
 *  서버(Tomcat)가 doGet 또는 doPost 메소드를 실행할 지 결정함,
 *  해당 클레스를 사용하기 위해서는 xml페이지에서
 *  서블릿설정과(이름,클래스)과 서블릿매핑(이름,urlpattern)을 설정해야함*/

//jsp 내에서는 java를 사용하기 불편하고, servlet 내에서는 html코드를 사용하기 불편 -> 둘을 분리하여 적절히 사용하는 방법을 배울것임

/**
 * Servlet implementation class ServletEx01
 */
//@WebServlet("/ServletEx01")
public class ServletEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx01() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
