package com.dietme.mealItems;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;
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

@WebServlet(urlPatterns = {"/admin/meal-items/new", "/admin/meal-items/insert", "/admin/meal-items/delete",
    "/admin/meal-items/edit", "/admin/meal-items/update", "/admin/meal-items/show"})
@MultipartConfig
public class MealItemsServlet extends HttpServlet {

    private MealItemsDao mIDDao;

    public MealItemsServlet() {
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
                case "/admin/meal-items/new": // Changed to match the URL pattern for adding new items
                    showNewForm(request, response);
                    break;
                case "/admin/meal-items/insert": // Changed to match the URL pattern for inserting new items
                    insertMealItemDesc(request, response);
                    break;
                case "/admin/meal-items/delete": // Changed to match the URL pattern for deleting items
                    deleteMealIngredientDetails(request, response);
                    break;
                case "/admin/meal-items/edit": // Changed to match the URL pattern for editing items
                    showEditForm(request, response);
                    break;
                case "/admin/meal-items/update": // Changed to match the URL pattern for updating items
                    updateMealItem(request, response);
                    break;
                case "/admin/meal-items/show": // Changed to match the URL pattern for displaying all items
                    listMealIngredientDetails(request, response);
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

    private void listMealIngredientDetails(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<MealItems> mIDList = mIDDao.findAll();
        request.setAttribute("mIDList", mIDList);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/JSP/Admin/mealItems/displayMealIngredianDetails.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/JSP/Admin/mealItems/addMealIngredianDetails.jsp");
        dispatcher.forward(request, response);
    }

    private void insertMealItemDesc(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {

        String mealItemName = request.getParameter("mealItemName");
        String description = request.getParameter("description");
        String defaultGramParam = request.getParameter("defaultGrams");
        String defaultPriceParam = request.getParameter("defaultPrice");
        String defaultCaloriesParam = request.getParameter("defaultCalories");
        String defaultProteinParam = request.getParameter("defaultProteins");
        String defaultCarbsParam = request.getParameter("defaultCarbs");

        double defaultGram = 0.0;
        double defaultPrice = 0.0;
        double defaultCalories = 0.0;
        double defaultProtein = 0.0;
        double defaultCarbs = 0.0;

        if (defaultGramParam != null) {
            defaultGram = Double.parseDouble(defaultGramParam);
        }

        if (defaultPriceParam != null) {
            defaultPrice = Double.parseDouble(defaultPriceParam);
        }

        if (defaultCaloriesParam != null) {
            defaultCalories = Double.parseDouble(defaultCaloriesParam);
        }

        if (defaultProteinParam != null) {
            defaultProtein = Double.parseDouble(defaultProteinParam);
        }

        if (defaultCarbsParam != null) {
            defaultCarbs = Double.parseDouble(defaultCarbsParam);
        }

        Part file = null;
        PrintWriter out = response.getWriter();

        try {
            file = request.getPart("imgUrl");
        } catch (ServletException ex) {
            Logger.getLogger(MealItemsServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        String imageFileName = file.getSubmittedFileName();

        // Saving the image file
        String uploadPath
                = "D:/SOFTWERE ENGENEERING/My-Projects/DEA-DietMe/web/DBImages/"
                + imageFileName;
        try (FileOutputStream fos = new FileOutputStream(uploadPath);
                InputStream is = file.getInputStream()) {
            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            out.println("Image successfully saved in folder location.");
        }
//
//        System.out.println("Image successfully saved in folder location.");
        // Create a MealIngredientsDetails object and insert it into the database
        MealItems mealIngredient = new MealItems(
                mealItemName,
                imageFileName,
                description,
                defaultGram,
                defaultPrice,
                defaultCarbs,
                defaultProtein,
                defaultCarbs);
        int insertedId = mIDDao.insert(mealIngredient);

        if (insertedId > 0) {
            request.setAttribute("status", "Insertsucsess");
        } else {
            request.setAttribute("status", "InsertFailed");
        }
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("/JSP/Admin/mealItems/addMealIngredianDetails.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Implement edit form display
        String id = request.getParameter("id"); // Get the ID of the item to edit
        // Fetch the item from the database using the DAO
        MealItems mealItem = mIDDao.findById(Integer.parseInt(id));
        request.setAttribute("MealItem", mealItem);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/JSP/Admin/mealItems/addMealIngredianDetails.jsp");
        dispatcher.forward(request, response);
    }

    private void updateMealItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        PrintWriter out = response.getWriter();
        String imageFileName = "";
        String mealItemIdStr = request.getParameter("mealItemId");

        int mealItemId = 0;
        if (mealItemIdStr != null && !mealItemIdStr.isEmpty()) {
            try {
                mealItemId = Integer.parseInt(mealItemIdStr);
            } catch (NumberFormatException e) {
                // Handle the case where the id parameter is not a valid integer
                response.sendRedirect("error.jsp"); // Redirect to an error page
                return;
            }
        } else {
            // Handle the case where the id parameter is null or empty
            response.sendRedirect("error.jsp"); // Redirect to an error page
            return;
        }

        String mealIngdName = request.getParameter("mealItemName");
        String existingImageUrl = request.getParameter("existingImageUrl");
        String description = request.getParameter("description");
        double defaultGrams = Double.parseDouble(request.getParameter("defaultGrams"));
        double defaultPrice = Double.parseDouble(request.getParameter("defaultPrice"));
        double defaultCal = Double.parseDouble(request.getParameter("defaultCalories"));
        double defaultProtien = Double.parseDouble(request.getParameter("defaultProteins"));
        double defaultCarbs = Double.parseDouble(request.getParameter("defaultCarbs"));
        Part filePart = request.getPart("imgUrl");

        // Check if imgUrl is not null and not empty
        if (filePart != null && filePart.getSize() > 0) {
            // Image upload logic
            imageFileName = filePart.getSubmittedFileName();
            String uploadPath = "D:/SOFTWERE ENGENEERING/My-Projects/DEA-DietMe/web/DBImages/" + imageFileName;

            try (FileOutputStream fos = new FileOutputStream(uploadPath);
                    InputStream is = filePart.getInputStream()) {
                byte[] data = new byte[is.available()];
                is.read(data);
                fos.write(data);
                out.println("Image successfully saved in folder location.");
            }
        } else {
            // Use existing image if no new image uploaded
            imageFileName = existingImageUrl;
        }

        MealItems updatedMealItem = new MealItems(mealItemId, mealIngdName, imageFileName, description, defaultGrams, defaultPrice, defaultCal, defaultProtien, defaultCarbs);

        boolean updated = mIDDao.update(updatedMealItem);

        if (updated) {
            request.setAttribute("status", "Updatesucsess");
        } else {
            request.setAttribute("status", "UpdateFailed");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("edit?id=" + mealItemId);
        dispatcher.forward(request, response);
    }

    private void deleteMealIngredientDetails(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Implement delete method
        String id = request.getParameter("id"); // Get the ID of the item to delete
        mIDDao.delete(Integer.parseInt(id));
        response.sendRedirect("show");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
