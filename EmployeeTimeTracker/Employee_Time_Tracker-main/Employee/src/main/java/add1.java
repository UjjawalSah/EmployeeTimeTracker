import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add1")
public class add1 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Database URL, username, and password
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String taskId = request.getParameter("task_id");
        String username = request.getParameter("username");
        String employeeName = request.getParameter("employee_name");
        String project = request.getParameter("project");
        String date = request.getParameter("date_1");
        String startTime = request.getParameter("start_time");
        String endTime = request.getParameter("end_time");
        String taskCategory = request.getParameter("task_category");
        String description = request.getParameter("description");
        
        // Database connection
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Open a connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            
            // Prepare SQL statement
            String sql = "INSERT INTO add_task (task_id,username, employee_name, project, date_1, start_time, end_time, task_category, description) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, taskId);
            stmt.setString(2, username);
            stmt.setString(3, employeeName);
            stmt.setString(4, project);
            stmt.setString(5, date);
            stmt.setString(6, startTime);
            stmt.setString(7, endTime);
            stmt.setString(8, taskCategory);
            stmt.setString(9, description);
           
            
            // Execute the statement
            stmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // Redirect back to the form page after submission
        response.sendRedirect(request.getContextPath() + "/add1.jsp");
    }
}
