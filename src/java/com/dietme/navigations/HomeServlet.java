package com.dietme.navigations;

import com.dietme.deafaultMeals.DefaultMealDao;
import com.dietme.deafaultMeals.DefaultMeals;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/home"})
@MultipartConfig
public class HomeServlet extends HttpServlet {

   private  DefaultMealDao defaultMealDao;

    public HomeServlet() {
        this.defaultMealDao = new DefaultMealDao();
    }
   
   

  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "":
                    listMealIngredientDetails(request, response);
                    break;

                default:
                    showHomePage(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listMealIngredientDetails(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        RequestDispatcher dispatcher;
        List<DefaultMeals> dmList = defaultMealDao.findAll();
        request.setAttribute("dMList", dmList);
        dispatcher = request.getRequestDispatcher(
                "home.jsp");

        dispatcher.forward(request, response);

    }

}
