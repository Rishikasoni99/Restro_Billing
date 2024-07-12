package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.DbConnection;
import com.model.MenuItem;

@WebServlet("/appetezer")
public class appetezer extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<MenuItem> appetizers = new ArrayList<>();
        try {
            String sql = "SELECT * FROM MenuItem WHERE categoryId = (SELECT categoryId FROM MenuCategory WHERE categoryName = 'Appetizers')";
            try (Connection con = DbConnection.takeConnection();
                 PreparedStatement ps = con.prepareStatement(sql);
                 ResultSet resultSet = ps.executeQuery()) {

                // Debugging: Check if the result set is empty
                if (!resultSet.isBeforeFirst()) {
                    System.out.println("No data found for Appetizers category.");
                }

                // Process the result set
                while (resultSet.next()) {
                    MenuItem menuItem = new MenuItem();
                    menuItem.setItemId(resultSet.getInt("itemId"));
                    menuItem.setItemName(resultSet.getString("itemName"));
                    menuItem.setDescription(resultSet.getString("description"));
                    menuItem.setPrice(resultSet.getDouble("price"));
                    appetizers.add(menuItem);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Debugging: Print retrieved appetizers to console
        System.out.println("Retrieved appetizers:");
        for (MenuItem menuItem : appetizers) {
            System.out.println(menuItem.getItemName());
        }

        // Set the response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Generate the HTML content
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<title>Appetizers</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>Appetizers</h2>");
        out.println("<ul>");
        for (MenuItem menuItem : appetizers) {
            out.println("<li>");
            out.println("<h3>" + menuItem.getItemName() + "</h3>");
            out.println("<p>" + menuItem.getDescription() + "</p>");
            out.println("<p>Price: $" + menuItem.getPrice() + "</p>");
            out.println("</li>");
        }
        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");
    }
   
}
