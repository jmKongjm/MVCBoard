package lab.board.web;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lab.web.domain.MemberDAO;
import lab.web.domain.MemberVO;
@WebServlet("/Member.do")
public class MemberServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public MemberServlet() {
super();
}
protected void doPost(HttpServletRequest request, HttpServletResponse
response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
String userid = request.getParameter("userid");
String password = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");
String address = request.getParameter("address");
MemberDAO dao = new MemberDAO();
MemberVO member = new MemberVO();
member.setUserid(userid);
member.setPassword(password);
member.setName(name);
member.setEmail(email);
member.setAddress(address);
try {
dao.insert(member);
request.setAttribute("message", "회원가입성공");
}catch(RuntimeException e) {
request.setAttribute("message", e.getMessage());
}
RequestDispatcher disp = request.getRequestDispatcher("/board/Member.jsp");
disp.forward(request, response);
}
}