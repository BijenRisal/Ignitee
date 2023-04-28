/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.Details;
import Model.Info;
import Model.User;
import Service.DetailsService;
import Service.InfoService;
import Service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
@WebServlet(name = "AdminController", urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String page = request.getParameter("page");

        System.out.println(page);
        if (page.equalsIgnoreCase("view")) {
            String userName = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println(userName + "" + password);

            if (userName.equals("admin") && password.equals("admin")) {
                HttpSession session = request.getSession();
                session.setAttribute("username", userName);
                
                List<User> users = new UserService().getUsers();
                request.setAttribute("userList", users);

                RequestDispatcher rd = request.getRequestDispatcher("/Admin/Dashboard.jsp");
                rd.forward(request, response);
            }
            RequestDispatcher rd = request.getRequestDispatcher("Admin/Adminlogin.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("viewusers")) {
            List<Details> details = new DetailsService().getDetails();
            request.setAttribute("detaillist", details);

            for (Details d : details) {
                System.out.println("name: " + d.getFirstname());
            }

            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Viewuser.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("delete")) {
            int user_id = Integer.parseInt(request.getParameter("id"));
            List<User> users = new UserService().getUsers();
            request.setAttribute("userList", users);

            new UserService().removeUser(user_id);

            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Dashboard.jsp");
            rd.forward(request, response);
        }

        if (page.equalsIgnoreCase("apply")) {
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/AppliedForm.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("update")) {
            String scholarshipname = request.getParameter("scholarshipname");
            String eligibility = request.getParameter("eligibility");
            String deadline = request.getParameter("deadline");
            String description = request.getParameter("description");
            
            Info info = new Info();
            info.setDeadline(deadline);
            info.setDescription(description);
            info.setEligibility(eligibility);
            info.setSchoalrshipname(scholarshipname);
            
            new InfoService().insertInfo(info);
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Update.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("home")) {
            List<User> users = new UserService().getUsers();
                request.setAttribute("userList", users);
            RequestDispatcher rd = request.getRequestDispatcher("/Admin/Dashboard.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("exit")) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect(request.getContextPath() + "/Admin/Adminlogin.jsp");
        }

    }

}
