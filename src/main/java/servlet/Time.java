package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Time
 */
@WebServlet(urlPatterns={"/servlet/Time"})
public class Time extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Time() {
        super();
    }
	/**
     * @throws javax.servlet.ServletException
	 * @see Servlet#init(ServletConfig)
	 */
        @Override
        public void init(ServletConfig config) throws ServletException {
        super.init(config); // indispensable !
        
    // ton code ici
}

	/**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
                response.setContentType("text/html");
                DateFormat dateInstance = DateFormat.getDateInstance(DateFormat.LONG);
                Cookie monCookie = new Cookie("nom","valeur");
                response.addCookie(monCookie);
                request.setAttribute("monCookie",monCookie);
                request.setAttribute("dateInstance",dateInstance);
                PrintWriter out = response.getWriter();
                out.write("<!DOCTYPE html>\n");
                out.write("<html>\n");
                out.write("  <head>\n");
                out.write("    <title>Java EE</title>\n");
                out.write("  </head>\n");
                out.write("  <body>\n");
                out.write("    <p>Notre première JSP.</p>\n");
                out.write("  </body>\n");
                out.write("</html>\n");
		// Forward vers la JSP
		// Données envoyées à la JSP
		RequestDispatcher dispatcher = request.getRequestDispatcher("/time.jsp");
		dispatcher.forward(request,response);
}
        
	/**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response); 
}
}
