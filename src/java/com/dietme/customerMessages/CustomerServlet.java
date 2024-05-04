package com.dietme.customerMessages;

import com.dietme.customerMessages.CustomerMessageDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.util.Date;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/sendMessage", "/replyMessage"})
public class CustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CustomerMessageDao customerMessageDao;

    public CustomerServlet() {
        super();
        customerMessageDao = new CustomerMessageDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "/sendMessage":
                sendMessage(request, response);
                break;
            case "/replyMessage":
                replyMessage(request, response);
                break;
            default:
                // Handle invalid actions
                break;
        }
    }

    private void sendMessage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        int userId = Integer.parseInt(request.getParameter("userId"));
//        String message = request.getParameter("message");
//        Date sentDate = new Date();
//        Time sentTime = new Time(sentDate.getTime());
//        PrintWriter out = response.getWriter();
//        out.println("userId: " + userId);
//        out.println("message: " + message);
//        out.println("sentDate: " + sentDate);
//        out.println("sentTime: " + sentTime);
//        CustomerMessage customerMessage = new CustomerMessage(userId, message, sentDate, sentTime, null, null, null);
//        int convId = customerMessageDao.sendCustomerMessage(customerMessage);
//
//        if (convId != -1) {
//            // Successfully sent message
//            response.sendRedirect("success.jsp"); // Redirect to a success page
//        } else {
//            // Failed to send message
//            response.sendRedirect("error.jsp"); // Redirect to an error page
//        }
    }

    private void replyMessage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int convId = Integer.parseInt(request.getParameter("convId"));
        String replyMessage = request.getParameter("replyMessage");
        Date replyDate = new Date();
        Time replyTime = new Time(replyDate.getTime());

        CustomerMessage existingMessage = customerMessageDao.findById(convId);
        if (existingMessage != null) {
            existingMessage.setReplyMessage(replyMessage);
            existingMessage.setReplyDate(replyDate);
            existingMessage.setReplyTime(replyTime);

            boolean updated = customerMessageDao.adminReplyMessage(existingMessage);
            if (updated) {
                request.setAttribute("message", "success");
            } else {
                request.setAttribute("message", "error");
            }
        } else {
            request.setAttribute("message", "error");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/home");
        dispatcher.forward(request, response);
    }

}
