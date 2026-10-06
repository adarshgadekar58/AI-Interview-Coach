package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JavaInterviewServlet")
public class JavaInterviewServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String question = request.getParameter("question");

        // Demo Answer
        String answer = "You asked: " + question
                + "<br><br>This is where the AI response will appear.";

        response.setContentType("text/plain");
        response.getWriter().print(answer);
    }
}