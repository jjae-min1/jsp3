package chap18.Complex3;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap18.Complex2.Model1;
import chap18.Complex2.Model2;
import chap18.Complex2.ModelInterface;

/**
 * Servlet implementation class Complex3Controller
 */
@WebServlet("/Complex3Controller")
public class Complex3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex3Controller() {
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
		
//		3. 요청한 기능 수행(WEB-INF에 file을 생성하여 
//		mapping을 시킨 후 해당 file을 읽어서 실행하는 코드를 작성하면
//		본 Controller를 수정하지 않고 file만 수정하며 사용 가능
		
		Object resultObject = null;
		ModelInterface model = null;
		
		
		String path = "/WEB-INF/mapping/mapping.properties";
		path = getServletContext().getRealPath(path);
		
		String modelClassName = "";
		try {
			
			FileReader fr = new FileReader(path);
			Properties properties = new Properties();
			properties.load(fr);
			String modelClassName = properties.getProperty(type);
		}
		
		
		
		try {
			Class c = Class.forName(modelClassName);
			model = (ModelInterface) c.newInstance();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		resultObject = model.execute();
		
		
//		4.request나 session에 저장
		request.setAttribute("result",resultObject);
		
//		5.view 로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/SimpleView.jsp");
		dispatcher.forward(request, response);
		
		
	}
	
	

}