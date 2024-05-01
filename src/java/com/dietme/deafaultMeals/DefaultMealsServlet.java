package com.dietme.deafaultMeals;

import com.dietme.mealAddedItemsDetails.MealAddedItems;
import com.dietme.mealAddedItemsDetails.MealAddedItemsDao;
import com.dietme.mealItems.MealItems;
import com.dietme.mealItems.MealItemsDao;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author kavin
 */
@WebServlet(urlPatterns = {"/default-meals/new", "/default-meals/insert-basic-details", "/default-meals/delete",
    "/default-meals/edit", "/default-meals/update", "/default-meals/show-all-items","/default-meals/insert-mealsub"})
@MultipartConfig
public class DefaultMealsServlet extends HttpServlet {

    private DefaultMealDao dmDao;
    private MealAddedItemsDao maIDo;
    private MealItemsDao mIDDao;

    public DefaultMealsServlet() {
        this.dmDao = new DefaultMealDao();
        this.maIDo = new MealAddedItemsDao();
        this.mIDDao = new MealItemsDao();

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        doGet(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/default-meals/new":
                    showNewForm(request, response);
                    break;
                case "/default-meals/insert-basic-details":
                    insertDefaultMeal(request, response);
                    break;
                case "/default-meals/delete":
                    deleteMeal(request, response);
                    break;
                case "/default-meals/edit":
                    break;
                case "/default-meals/update":
                    break;
                case "/default-meals/show-all-items":
                    listDefaultMeals(request, response);
                    break;
                case "/default-meals/insert-mealsub":
                    addNewMealSubItem(request, response);
                    break;
                default:
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void listDefaultMeals(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher;

        List<DefaultMeals> dmList = dmDao.findAll();
        request.setAttribute("dMList", dmList);
        dispatcher = request.getRequestDispatcher(
                "/jsp/default-meals/displayDefaultMealsDetails.jsp");

        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/jsp/default-meals/addDefaultMeal.jsp");
        dispatcher.forward(request, response);
    }

    private void insertDefaultMeal(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

        String defaultMealName = request.getParameter("defaultmealName");
        String mealgoalType = request.getParameter("mealgoalType");
        String mealTime = request.getParameter("mealTime");
        String mealType = request.getParameter("mealType");
        String description = request.getParameter("description");
        Part filePart = request.getPart("imgUrl"); // Retrieving the file part from the request

        // Get the filename
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

        // Saving the image file
        String uploadPath = getServletContext().getRealPath("/DBImages/") + File.separator + fileName;

        try (InputStream fileContent = filePart.getInputStream();
                FileOutputStream fos = new FileOutputStream(uploadPath)) {
            byte[] data = new byte[fileContent.available()];
            fileContent.read(data);
            fos.write(data);
            System.out.println("Image successfully saved in folder location.");
        }

        DefaultMeals defaultMeal = new DefaultMeals(
                defaultMealName,
                fileName, // Save the filename instead of full path in the database
                mealgoalType,
                mealTime,
                mealType,
                description);

        int insertedId = dmDao.insert(defaultMeal);

        if (insertedId > 0) {
            request.setAttribute("status", "MealInsertSuccess");
            request.setAttribute("DefaultMealId", insertedId);
        } else {
            request.setAttribute("status", "MealInsertFailed");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("new");
        dispatcher.forward(request, response);
    }

//        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/default-meals/addDefaultMeal.jsp");
//        dispatcher.forward(request, response);
//    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        // Implement edit form display
//        String id = request.getParameter("id"); // Get the ID of the item to edit
//        // Fetch the item from the database using the DAO
//        MealItems mealItem = mIDDao.findById(Integer.parseInt(id));
//        request.setAttribute("MealItem", mealItem);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/mealItems/addMealIngredianDetails.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void updateMealItem(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException, SQLException {
//        PrintWriter out = response.getWriter();
//        String imageFileName = "";
//        String mealItemIdStr = request.getParameter("mealItemId");
//
//        int mealItemId = 0;
//        if (mealItemIdStr != null && !mealItemIdStr.isEmpty()) {
//            try {
//                mealItemId = Integer.parseInt(mealItemIdStr);
//            } catch (NumberFormatException e) {
//                // Handle the case where the id parameter is not a valid integer
//                response.sendRedirect("error.jsp"); // Redirect to an error page
//                return;
//            }
//        } else {
//            // Handle the case where the id parameter is null or empty
//            response.sendRedirect("error.jsp"); // Redirect to an error page
//            return;
//        }
//
//        String mealIngdName = request.getParameter("mealItemName");
//        String imgUrl = request.getParameter("imgUrl");
//        String existingImageUrl = request.getParameter("existingImageUrl");
//
//        String description = request.getParameter("description");
//        double defaultGrams = Double.parseDouble(request.getParameter("defaultGram"));
//        double defaultPrice = Double.parseDouble(request.getParameter("defaultPrice"));
//        double defaultCal = Double.parseDouble(request.getParameter("defaultCalories"));
//        double defaultProtien = Double.parseDouble(request.getParameter("defaultProtein"));
//        double defaultCarbs = Double.parseDouble(request.getParameter("defaultCarbs"));
//        Part file = null;
//        out.print("new"+imgUrl);        out.print("db"+existingImageUrl);
//
//       
// if (imgUrl != null && !imgUrl.isEmpty()) { // Check if imgUrl is not null and not empty
//            try {
//                file = request.getPart("imgUrl");
//                imageFileName = file.getSubmittedFileName();
//
//                // Saving the image file
//                String uploadPath = "C:/Users/kavin/OneDrive/Documents/NetBeansProjects/MealProject/web/DBImages/" + imageFileName;
//
//                try (FileOutputStream fos = new FileOutputStream(uploadPath);
//                        InputStream is = file.getInputStream()) {
//                    byte[] data = new byte[is.available()];
//                    is.read(data);
//                    fos.write(data);
//                    out.println("Image successfully saved in folder location.");
//                }
//
//                System.out.println("Image successfully saved in folder location.");
//
//            } catch (ServletException ex) {
//                Logger.getLogger(MealItemsServlet.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } else {
//            imageFileName = existingImageUrl;
//        }
//
//        MealItems updatedMealItem = new MealItems(mealItemId, mealIngdName, imageFileName, description, defaultGrams, defaultPrice, defaultCal, defaultProtien, defaultCarbs);
//
//        boolean updated = mIDDao.update(updatedMealItem);
//
//        if (updated) {
//            request.setAttribute("status", "Updatesucsess");
//        } else {
//            request.setAttribute("status", "UpdateFailed");
//        }
//        RequestDispatcher dispatcher = request.getRequestDispatcher("edit?id=" + mealItemId);
//        dispatcher.forward(request, response);
//    }
//
    private void deleteMeal(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Implement delete method
        String id = request.getParameter("id"); // Get the ID of the item to delete
        dmDao.delete(Integer.parseInt(id));
        response.sendRedirect("show-all-items");
    }

    /*-----------------This is addedmealitem function codes----------------*/
    private void addNewMealSubItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve parameters from the request
            int mealId = Integer.parseInt(request.getParameter("mealId"));
            int mealItemId = Integer.parseInt(request.getParameter("mealItem"));
            double inputGrams = Double.parseDouble(request.getParameter("mealItemGrams"));

            MealAddedItems newMealAddedItem = new MealAddedItems(mealId, mealItemId, inputGrams);

            // Insert the new meal item into the database
            int insertedId = maIDo.insert(newMealAddedItem);

            if (insertedId > 0) {
                // If insertion successful, set attributes and forward to success page
                request.setAttribute("status", "MealInsertSuccess");
                request.setAttribute("DefaultMealId", mealId);
            } else {
                // If insertion failed, set attribute and forward to error page
                request.setAttribute("status", "MealInsertFailed");
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("new");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            // Handle any exceptions
            e.printStackTrace();
            request.setAttribute("status", "MealInsertFailed");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }

    }

    /*-----------------This is end of addedmealitem function codes----------------*/
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
