package lab.web.servlet;

import lab.web.domain.BoardDAO;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import lab.web.domain.MemberDAO;


@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	
	public LoginServlet()
	{
		super();
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		if("logout".equals(action))
		{
			session.invalidate();
		}
		else
		{
			request.setAttribute("message","�߸��� ����Դϴ�");
			
			
		}
		RequestDispatcher disp = request.getRequestDispatcher("login.jsp");
		disp.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse
			response) throws ServletException, IOException {
			MemberDAO dao = new MemberDAO();
			String userid = request.getParameter("userid");
			String password = request.getParameter("password");
			String action = request.getParameter("action");
			
		
			HttpSession session = request.getSession();
			String url = "/error/error.jsp";
			if("login".contentEquals(action))
			{
				try
				{
					String dbpw = dao.getPassword(userid);
					String email = dao.getEmail(userid);
					if(dbpw.contentEquals(password))
					{
						session.setAttribute("userid",userid);
						session.setAttribute("email", email);
						request.setAttribute("message", userid+"�� ȯ���մϴ�.");
						url = "/board/ok.jsp";
					}
					else
					{
						session.invalidate();
						request.setAttribute("message", "��й�ȣ�� �ٸ��ϴ�");
						
					}
				}catch(RuntimeException e)
					{
						session.invalidate();
						request.setAttribute("message", e.getMessage());
					}
				}else if(("logout").equals(action))
				{ session.invalidate(); url = "/board/login.jsp"; }
				else if(null==action)
				{ 
					if(null==session.getAttribute("userid")) 
				{ 
						request.setAttribute("message", "�α��� �� ���°� �ƴմϴ�. �α����� ���ּ���.");
						url="/error/error.jsp"; }
				else { 
					url="/board/login.jsp"; 
					} 
				}
			RequestDispatcher disp = request.getRequestDispatcher(url); 
				disp.forward(request, response); }			
	}
