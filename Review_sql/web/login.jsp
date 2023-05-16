<%-- 
    Document   : login
    Created on : 15 May, 2023, 1:20:39 AM
    Author     : RAMJAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.security.* " %>
<%@page import="com.mysql.jdbc.Driver" %>
<%@page import="java.math.BigInteger"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Authentication</title>
    </head>
    <body>
        <h1>Unique paper code: 
            <%
                
                Connection conn = null;
                PreparedStatement pstm = null;
                ResultSet rs = null;
                
                
                try{
                    //connect to database
                    String url= "jdbc:mysql://localhost:3306/student";
                    String dbusername="root";
                    String dbpassword="123ramjan123";
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection(url, dbusername, dbpassword);
                    System.out.println("Connection Success");
                   
//                    //create MD5 Hash of user entered password
//                    MessageDigest md = MessageDigest.getInstance("MD5");
//                    md.update(pass.getBytes());
//                    byte[] digest = md.digest();
//                    String md5Hash = new BigInteger(1, digest).toString(16);
//                    
                    //query database for user --> prepared statement
//                     String query= " SELECT sub2 FROM registration WHERE session = 'jan_june_2017' UNION SELECT sub3 FROM registration WHERE session = 'jan_june_2017' UNION SELECT sub4 FROM registration WHERE session = 'jan_june_2017' UNION SELECT sub5 FROM registration WHERE session = 'jan_june_2017' UNION SELECT sub6 FROM registration WHERE session = 'jan_june_2017' UNION SELECT sub7 FROM registration WHERE session = 'jan_june_2017';"
//                    String query=" SELECT ? FROM registration WHERE session='?' UNION SELECT ? FROM registration WHERE session = '?' UNION SELECT ? FROM registration WHERE session = '?' UNION SELECT ? FROM registration WHERE session = '?' UNION SELECT ? FROM registration WHERE session = '?' UNION SELECT ? FROM registration WHERE session = '?' UNION SELECT ? FROM registration WHERE session = '?';
//                    pstm=conn.prepareCall(query);
//                    pstm.setString(1,sub1);
//                    pstm.setString(2,md5Hash);
                        rs= pstm.executeQuery();
                    
                    //check user exist
                    if(rs.next()){
                        response.sendRedirect("home.jsp");
                    }else{
                        out.println("<p>Invalid username or password</p>");
                    }
                }catch(Exception  e){
                    out.println("<p>Error: " +e+ "</p>");
                }finally{
                    
                     // Close database connection
                    try {
                        if (rs != null) rs.close();
                        if (pstm != null) pstm.close();
                        if (conn != null) conn.close();
                        } catch (Exception e) {
//                            out.println("<p>Error: " + e.getMessage() + "</p>");
                            }

                    
                }
             %>
        </h1>
    </body>
</html>
