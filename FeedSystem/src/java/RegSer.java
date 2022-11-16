import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mr. Vishal
 */
public class RegSer extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
           String regid = request.getParameter("txtuser");
           String email= request.getParameter("txtemail");
           String mobile = request.getParameter("txtmobile");
           String pass = request.getParameter("txtpass");
            
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedsystem","root","");
           
         
           String x = "insert into reg (regid, password, emailid, mobileno) values(?,?,?,?)";
           PreparedStatement st=con.prepareStatement(x);
         
           st.setString(1,regid);
           st.setString(2, pass);
           st.setString(3, email);
           st.setString(4, mobile);
           st.executeUpdate();
           
           response.sendRedirect("studentlogin.jsp");
           
           
        } catch (Exception ex) {
           
        } 
    }

}
    