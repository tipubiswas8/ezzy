


<%@ page import="java.sql.*" %>

<html>
    
    <HEAD>
        <TITLE>insert data using prepared statement </TITLE>
  <link rel="stylesheet" type="text/css" href="style.css">
  
</HEAD>


<body>
<div id="content">

    <center>
        <p>Employee Data</p>
    <table border="0" cellpadding="10">
        <thead>
            <tr>
                
                <th>Id No:</th>
                <th>Employee Name:</th>
                <th>Address:</th>
                <th>Phone No:</th>
                <th>Image:</th>
                <th>Information:</th>
                
            </tr>
        </thead>
        <body>


            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = null;
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sohel", "root", "12345678");
                Statement stmt = null;
                stmt = conn.createStatement();
                String query = "select * from rana";
                ResultSet rs = null;
                rs = stmt.executeQuery(query);
                while(rs.next()){
            %>
            <tr>
                <%
                    
                    int Id = rs.getInt("id");
                    String EmployeeName = rs.getString("name");
                    String Address = rs.getString("address");
                    int PhoneNo = rs.getInt("phone");
                    Blob Image = rs.getBlob("image");
                    Blob Information = rs.getBlob("information");
                    
                %>
                
                <td><%= Id %></td>
                <td><%= EmployeeName %></td>
                <td><%= Address %></td>
                <td><%= PhoneNo %></td>
                <td><%= Image %></td>
                <td><%= Information %></td>
                
            </tr>               

            <%      
                }
            %>

        </tbody>
    </table>
            
   </center>
</div>
</body>
</html>