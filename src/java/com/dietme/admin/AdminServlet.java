//
//import com.dietme.admin.Admin;
//import com.dietme.admin.AdminDao;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.PrintWriter;
//import java.sql.SQLException;
//import java.util.List;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;
//
///**
// *
// * @author kavin
// */
//@WebServlet(urlPatterns = {"/mealItems/new", "/mealItems/insert", "/mealItems/delete",
//    "/mealItems/edit", "/mealItems/update", "/mealItems/show"})
//public class AdminServlet extends HttpServlet {
//
//    private AdminDao adminDao;
//
//    public AdminServlet() {
//        this.adminDao = new AdminDao();
//    }
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        doGet(request, response);
//
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getServletPath();
//
//        try {
//            switch (action) {
//                case "/admins/register":
//                    showNewForm(request, response);
//                    break;
//                case "/admins/login":
//                    showNewForm(request, response);
//                    break;
//                case "/admins/insert":
//                    insertMealItemDesc(request, response);
//                    break;
//                case "/admins/delete":
//                    deleteMealIngredientDetails(request, response);
//                    break;
//                case "/admins/edit":
//                    showEditForm(request, response);
//                    break;
//                case "/admins/update":
//                    updateMealItem(request, response);
//                    break;
//                case "/admins/show":
//                    listMealIngredientDetails(request, response);
//                    break;
//                default:
//                    break;
//            }
//        } catch (SQLException ex) {
//            throw new ServletException(ex);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doGet(request, response);
//    }
//
//    private void listMealIngredientDetails(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        List<Admin> adminList = adminDao.findAll();
//        request.setAttribute("adminList", adminList);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/mealItems/displayAdmins.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        RequestDispatcher dispatcher
//                = request.getRequestDispatcher("/jsp/mealItems/addAdmins.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void registerNewAdmin(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//
//        String adminName = request.getParameter("adminName");
//        String email = request.getParameter("email");   
//        int mobileNumber = Integer.parseInt(request.getParameter("mobileNumber"));
//        String password = request.getParameter("password");
//        String isActive = request.getParameter("isActive");
//        
//        
//        Part file = null;
//        PrintWriter out = response.getWriter();
//
//        try {
//            file = request.getPart("imgUrl");
//        } catch (ServletException ex) {
//            Logger.getLogger(MealItemsServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        String imageFileName = file.getSubmittedFileName();
//
//        // Saving the image file
//        String uploadPath
//                = "C:/Users/kavin/OneDrive/Documents/NetBeansProjects/MealProject/web/DBImages/"
//                + imageFileName;
//        try (FileOutputStream fos = new FileOutputStream(uploadPath);
//                InputStream is = file.getInputStream()) {
//            byte[] data = new byte[is.available()];
//            is.read(data);
//            fos.write(data);
//            out.println("Image successfully saved in folder location.");
//        }
//
//        System.out.println("Image successfully saved in folder location.");
//
//        // Create a MealIngredientsDetails object and insert it into the database
//        MealItems mealIngredient = new MealItems(
//                mealItemName,
//                imageFileName,
//                description,
//                defaultGram,
//                defaultPrice,
//                defaultCarbs,
//                defaultProtein,
//                defaultCarbs);
//        int insertedId = mIDDao.insert(mealIngredient);
//
//        if (insertedId > 0) {
//            request.setAttribute("status", "Insertsucsess");
//        } else {
//            request.setAttribute("status", "InsertFailed");
//        }
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/mealItems/addMealIngredianDetails.jsp");
//        dispatcher.forward(request, response);
//
//    }
//
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
//        out.print("new" + imgUrl);
//        out.print("db" + existingImageUrl);
//
//        if (imgUrl != null && !imgUrl.isEmpty()) { // Check if imgUrl is not null and not empty
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
//    private void deleteMealIngredientDetails(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        // Implement delete method
//        String id = request.getParameter("id"); // Get the ID of the item to delete
//        mIDDao.delete(Integer.parseInt(id));
//        response.sendRedirect("show");
//    }
//
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
