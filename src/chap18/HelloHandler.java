package chap18;

import javax.servlet.http.HttpServletRequest;	
import javax.servlet.http.HttpServletResponse;

import chap18.CommandHandler;

public class HelloHandler implements CommandHandler {
@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("hello", "안녕하세요!");
		return "/WEB-INF/view/chap18/hello.jsp";
	}
	
}
