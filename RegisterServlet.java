package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import Model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
    	//userId
    	String id =request.getParameter("userId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String college = request.getParameter("college");
        String skills = request.getParameter("skills");

        User user = new User();
        user.setUserId(id);
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setCollege(college);
        user.setSkills(skills);

        UserDAO dao = new UserDAO();

        boolean status = dao.registerUser(user);

        if(status){

            response.sendRedirect("login.jsp?msg=success");

        }else{

            response.sendRedirect("register.jsp?msg=failed");

        }

    }

}