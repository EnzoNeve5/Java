import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
 
public class LoginServlet extends HttpServlet {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pagina = "index.jsp?erro=1";
  
        String oAcao = request.getParameter("acao");
 
        if (oAcao.equals("login")) {
            if (request.getParameter("login").equals("admin")) {
                if (request.getParameter("senha").equals("admin")) {
                    HttpSession sessao = request.getSession();
 
                    sessao.setAttribute("login", request.getParameter("login")); 
 
                    pagina = "index.jsp";
                }
            }
        } 
        
        else if (oAcao.equals("logout")) {
            HttpSession sessao = request.getSession();
            sessao.invalidate();
            pagina = "index.jsp";
        }
 
        response.sendRedirect(pagina);
 
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
 
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}