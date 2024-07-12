package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.DbConnection;
import com.model.MenuItem;

public class MenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    	  response.setContentType("text/html");
          PrintWriter pw = response.getWriter();
          
          try (Connection con = DbConnection.takeConnection()) {
              String query = "SELECT * FROM MenuItem";
              PreparedStatement ps = con.prepareStatement(query);
              ResultSet rs = ps.executeQuery();
              
              pw.print("<table border='1'>");
              pw.print("<tr><th>Item ID</th><th>Item Name</th><th>Category ID</th><th>Price</th><th>Description</th></tr>");
              
              while (rs.next()) {
                  pw.print("<tr>");
                  pw.print("<td>" + rs.getInt("itemId") + "</td>");
                  pw.print("<td>" + rs.getString("itemName") + "</td>");
                  pw.print("<td>" + rs.getInt("categoryId") + "</td>");
                  pw.print("<td>" + rs.getDouble("price") + "</td>");
                  pw.print("<td>" + rs.getString("description") + "</td>");
                  pw.print("</tr>");
              }
              pw.print("</table>");
              
          } catch (SQLException e) {
              e.printStackTrace();
              pw.print("<p>Error retrieving data. Please try again later.</p>");
          }
		
	}
       
}
