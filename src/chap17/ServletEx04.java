package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletEx04
 */
@WebServlet("/ex04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//jsp의 기본 객체
		//request, session, application, config
		//response, out
		//pageContext, page (페이지용이라 꺼내서 쓸 수 없음)
		
		
		//session 객체 호출 
		HttpSession session = request.getSession();
		
		//application 객체 호출
		ServletContext application = request.getServletContext();
		application = getServletContext();
		
		//config 객체 호출
		ServletConfig config = getServletConfig();
		
		//out 객체 호출
		PrintWriter out = response.getWriter();//문자단위
		
		
		System.out.println("ex04 servlet doGet method");
		System.out.println(request.getParameter("id"));
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
