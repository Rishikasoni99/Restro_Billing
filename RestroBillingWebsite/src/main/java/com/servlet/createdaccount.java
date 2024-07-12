package com.servlet;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.database.DbConnection;

/**
 * Servlet implementation class createdaccount
 */
@WebServlet("/createdaccount")
public class createdaccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		


		 
	       

	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        String email = request.getParameter("email");

	        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";

	        try (Connection con = DbConnection.takeConnection();
	             PreparedStatement statement = con.prepareStatement(sql)) {

	            // SQL query to insert data
	            statement.setString(1, username);
	            statement.setString(2, password);
	            statement.setString(3, email);

	            // Execute the query
	            int rows = statement.executeUpdate();
	            if (rows > 0) {
	                response.sendRedirect("success.html");
	            } else {
	                response.sendRedirect("error.html");
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            response.sendRedirect("error.html");
	        }
	    }
}