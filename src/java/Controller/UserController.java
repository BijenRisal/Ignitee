/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Hashing.HashingPassword;
import Model.Details;
import Model.User;
import Service.DetailsService;
import Service.UserService;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Dell
 */
@WebServlet(name = "UserController", urlPatterns = {"/UserController"})
public class UserController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String page = request.getParameter("page");
        HttpSession session = request.getSession();
        if (page.equalsIgnoreCase("newuser")) {
            String userName = request.getParameter("username");
            String email = request.getParameter("email");
            String password = HashingPassword.hashPassword(request.getParameter("password"));
            User user = new User();
            user.setEmail(email);
            user.setName(userName);
            user.setPassword(password);
            System.out.println(page);
            System.out.println("\n\n" + userName + " " + password);
            UserService userService = new UserService();

            userService.insertUser(user);

            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("existing")) {
            String username = request.getParameter("username");
            String password = HashingPassword.hashPassword(request.getParameter("password"));

            System.out.println(username + password);
//            UserService userService = new UserService();
//            System.out.println(userService.getUser(username, password));
            User user = new UserService().getUser(username, password);
            if (user != null) {
                session.setAttribute("id", user.getId());
                session.setAttribute("username", user.getName());
                session.setAttribute("password", user.getPassword());
                RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
                rd.forward(request, response);
                System.out.println(session.getAttribute("id"));
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            }

//            if (userService.getUser(username, password)) {
//                RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
//                rd.forward(request, response);
//            } else {
//                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
//                rd.forward(request, response);
//            }
//        }
        }
//        if(page.equalsIgnoreCase("verifyUsername")) {
//             String username = request.getParameter("username");
//             User user = new UserService().getUser(username, page);
//             
//             if (user != null) {
//                 session.setAttribute("id", user.getId());
//                 request.setAttribute("user", user);
//                 RequestDispatcher rd = request.getRequestDispatcher("/Pages/ChangePassword.jsp");
//                 rd.forward(request, response);
//             }
//             session.setAttribute("status", "No username found!!");
//             RequestDispatcher rd = request.getRequestDispatcher("/Pages/ForgotPassword.jsp");
//             rd.forward(request, response);
//             
//         }
//         
//         if(page.equalsIgnoreCase("changePassword")) {
//             String password = HashingPassword.hashPassword(request.getParameter("password"));
//             int id = Integer.parseInt( request.getParameter("id") );
//             System.out.println("Getting the session id: "  + session.getAttribute("id"));
//             System.out.println("Getting id: " + id);
//             
//             new UserService().updatePassword(id, password);
//             
//             RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=login");
//             rd.forward(request, response);
//             
//         }
        if (page.equalsIgnoreCase("college")) {
            RequestDispatcher rd = request.getRequestDispatcher("college.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("college")) {
            RequestDispatcher rd = request.getRequestDispatcher("college.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("scholar")) {
            RequestDispatcher rd = request.getRequestDispatcher("scholar.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("details")) {
            RequestDispatcher rd = request.getRequestDispatcher("scholardetail.jsp");
            rd.forward(request, response);
        }
//         if (page.equalsIgnoreCase("s")) {
//            RequestDispatcher rd = request.getRequestDispatcher("scholardetail.jsp");
//            rd.forward(request, response);
//        }
        if (page.equalsIgnoreCase("userdetails")) {
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String birthofdate = request.getParameter("birthofdate");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String school = request.getParameter("school");
            String college = request.getParameter("college");
//            String test = request.getParameter("upload");
//            System.out.println(test);
            
//             //get file from request
//            Part upload = request.getPart("upload");
//            System.out.println(upload);
//            //get filename
//            String uploadFilename = upload.getSubmittedFileName();
//            System.out.println(uploadFilename);
//
//            InputStream is1 = upload.getInputStream();
//
//            // Get the directory to save the uploaded file
//            String path1 = "C:/Ignite/web";
//
//            System.out.println("path1:" + path1);
//
//            // Save the file to the project_name/image folder
//            Path filePath1 = Paths.get(path1, uploadFilename);
//            Files.copy(is1, filePath1, StandardCopyOption.REPLACE_EXISTING);

            Details details = new Details();
            details.setFirstname(firstname);
            details.setLastname(lastname);
            details.setEmail(email);
            details.setAddress(address);
            details.setPhone(phone);
            details.setBirthofdate(birthofdate);
            details.setSchool(school);
            details.setCollege(college);
//            details.setUpload(uploadFilename);

            System.out.println(page);
            DetailsService detailsService = new DetailsService();

            detailsService.insertDetails(details);

            RequestDispatcher rd = request.getRequestDispatcher("status.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("exit")) {
//            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect(request.getContextPath() + "/Login.jsp");
        }
        if (page.equalsIgnoreCase("forget")) {
            RequestDispatcher rd = request.getRequestDispatcher("Forget.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("back")) {
            RequestDispatcher rd = request.getRequestDispatcher("scholardetail.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("statuspage")) {
            RequestDispatcher rd = request.getRequestDispatcher("statuspage.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("page-1")) {
            RequestDispatcher rd = request.getRequestDispatcher("college.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("page-2")) {
            RequestDispatcher rd = request.getRequestDispatcher("College-2.jsp");
            rd.forward(request, response);
        }
          if (page.equalsIgnoreCase("register")) {
            RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
            rd.forward(request, response);
        } 
          if (page.equalsIgnoreCase("signin")) {
            RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("changepassword")) {
            RequestDispatcher rd = request.getRequestDispatcher("ChangePassword.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("home")) {
            RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
            rd.forward(request, response);
        }
         if(page.equalsIgnoreCase("updatePassword")) {
             String password = HashingPassword.hashPassword(request.getParameter("confirm-password"));
             String cpassword = HashingPassword.hashPassword(request.getParameter("current-password"));
             int id = (int) session.getAttribute("id");
             System.out.println("Getting the session id: "  + id);
             System.out.println("Getting id: " + id);
             
             User user = new UserService().getExistingPassword(cpassword);
             
             if( user != null )  {
                 new UserService().updatePassword(id, password);
             }
             
             RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
             rd.forward(request, response);
             
         }
    }

}

/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//}
