import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Session extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response) {
    // Get the current session or create a new one if it doesn't exist
    HttpSession session = request.getSession(true);

    // Set a session attribute
    session.setAttribute("username", "");

    // Get a session attribute
    String username = (String) session.getAttribute("username");

    // Remove a session attribute
    session.removeAttribute("username");

    // Invalidate the session
    session.invalidate();
  }

}
