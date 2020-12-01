package chap17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx12
 */
@WebServlet("/ServletEx12")
public class ServletEx12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx12() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
//    init 메소드에 해당 servlet 실행시 list에 5가지 원소를 넣어 database 키값에 저장
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	List<String> list = new ArrayList<>();
    	list.add("java");
    	list.add("html");
    	list.add("css");
    	list.add("servlet");
    	list.add("tomcat");
    	super.init();
    	application.setAttribute("database", list);
    }
    
//    doget 메소드에 필요한 연산과정을 선언
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		변수 id를 받는중
		String id = request.getParameter("id");
		if(id==null) {
			id = "0";
		}
		int idx = Integer.valueOf(id);
		
//		db조회
		
		ServletContext application = getServletContext();
		List<String> list = (List<String>) application.getAttribute("database");
		
		String name = list.get(idx);
		
		
		
		//jsp에 넘겨주기 위해 request attribute에 set
		request.setAttribute("name", name);
		
		
		
		
//		forward(jsp에 넘겨줌) 
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap17/lecture/servletEx12View.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
