package nowon.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/member/signup", "/member/signin", "/board/list" })
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String[] strs = uri.split("/");
		String key = strs[strs.length - 1];

		String path = null;
		if (key.equals("signup")) {
			// 회원가입 페이지 이동
			path = "/WEB-INF/member/signup.jsp";
		} else if (key.equals("signin")) {
			// 로그인 페이지 이동
			path = "/WEB-INF/member/signin.jsp";
		} else if (key.equals("list")) {
			// 로그인 페이지 이동
			path = "/WEB-INF/board/list.jsp";
		}
		// 응답페이지
		if (path != null)
			request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
