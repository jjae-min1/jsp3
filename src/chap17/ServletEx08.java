package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx08
 */

//loadonStartup : 실행 우선순위, 1로 설정시 요청을 하지 않아도 init 메소드 실행)
//servlet초기화 당시 시간이 오래걸릴 수 있으므로 1로 설정하여 서블릿컨테이너 구동시 자동으로 init이 실행되도록 설정(xml내에서도 설정 가능)
@WebServlet(value="/ex08", loadOnStartup=1)
public class ServletEx08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private int i = 0;
//    멀티쓰레드 떄와 동일하게 쓰레드 밖에서 선언한 변수를 사용할 시
//    위험할 수 있으므로 변수가 필요할 시 메소드 내부에서 자체적으로 선언하여 사용
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx08() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    //init : 해당Servlet 실행시 최초 1번만 실행되는 메소드
//    servlet을 초기화 하기 위해 사용
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	System.out.println("init method 실행");
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doget method 실행");
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
