package chap17.sample2;

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

import chap05.Post;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/FormServlet")

public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	ServletContext application = getServletContext();
    	Object obj = application.getAttribute("posts");
    	
    	
    	if(obj == null) {
    		list = new ArrayList<>();
    		application.setAttribute("posts", list);
    	}else {
    		list = (List<Post>) obj;
    	}
    	
    	super.init();
    }
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path="/chap17/lecture/sample2/form.jsp";

		request.getRequestDispatcher(path).forward(request, response);
		
		
		//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if(title != null && body != null 
				&& !title.isEmpty() && !body.isEmpty()) {
//			잘 작성했으면 DB에 저장(우리는 임시로 application에 저장)
//			목록을 보여주는 servlet으로 redirect
			
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			list.add(post);
			
			
			
			
			response.sendRedirect(request.getContextPath() + "/sample2/list");
			
			
		}else {
//			잘 작성되지 않았으면
//			form.jsp로 forward
			
			doGet(request, response);
//			doGet메소드와 하는일이 동일하므로 메소드 호출
			
			
		}
		
	}

}
