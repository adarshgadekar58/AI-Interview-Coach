package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.GeminiService;

@WebServlet("/InterviewServlet")
public class InterviewServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Read data from form
        String subject = request.getParameter("subject");
        String difficulty = request.getParameter("difficulty");
        String count = request.getParameter("count");

        // Build AI Prompt
        String prompt =
                "Act as a Senior Technical Interviewer.\n\n"
                + "Generate " + count + " "
                + difficulty + " level interview questions on "
                + subject + ".\n\n"
                + "Rules:\n"
                + "1. Questions should be practical.\n"
                + "2. Do not include answers.\n"
                + "3. Number the questions.\n"
                + "4. Keep them suitable for Java Full Stack interviews.";

        // Call Gemini Service
        GeminiService service = new GeminiService();

        String questions = "";

        try {

            questions = service.generateQuestions(prompt);

        } catch (Exception e) {

            e.printStackTrace();

            questions = "Unable to generate interview questions.";

        }

        // Send data to interview.jsp
        request.setAttribute("subject", subject);
        request.setAttribute("difficulty", difficulty);
        request.setAttribute("questions", questions);

        request.getRequestDispatcher("interview.jsp")
               .forward(request, response);

    }

}