<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd" > 
      <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>
  <TITLE>insert data using prepared statement </TITLE>
  <link rel="stylesheet" type="text/css" href="style.css">
  
</HEAD>


 <CENTER>
    <BODY bgcolor="#ffffcc">
  <font size="+3" color="green"><br> Employee Information </font>
   </CENTER>




<FORM action="tipu.jsp" method="get"    
 <form method="post" action="ggg" enctype="multipart/form-data">  
     
     <CENTER>
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
        
                  <tr>
                    <td>Id: </td>
                    <td><input type="text" name="id" size="50"/></td>
                </tr>
                
                <tr>
                    <td>First Name: </td>
                    <td><input type="text" name="name" size="50"/></td>
                </tr>
                
                  <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" size="50"/></td>
                </tr>
                <tr>
                    <td>Phone No: </td>
                    <td><input type="text" name="phone" size="50"/></td>
                </tr>
                
            <tr>
                    <td>Image: </td>
                    <td><input type="file" name="image" size="50"/></td>
                </tr>
                
            <tr>
                    <td>Information: </td>
                    <td><input type="file" name="information" size="50"/></td>
            </tr>
                
                
                <tr>
                    <td>
                        <input type="submit" value="Save">
                    </td>
                </tr>
                
                  <tr>
                    <td>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
         
            </table>
            
<%

   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String address = request.getParameter("address");
   String phone = request.getParameter("phone");
   String image = request.getParameter("image");
   String information = request.getParameter("information");
   /* Create string of connection url within specified 
   format with machine name, 
    port number and database name. Here machine name id 
    localhost and database name is student. */
    String connectionURL = "jdbc:mysql://localhost:3306/sohel";
          // declare a connection by using Connection interface 
    Connection connection = null;
        // declare object of Statement interface that uses for executing sql statements;
     PreparedStatement pstatement = null;
         // Load JBBC driver "com.mysql.jdbc.Driver"
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
     	 // check if the text box is empty
	 if(id!=null && name!=null && address!=null && phone!=null && image!=null && information!=null){
	 		 // check if the text box having only blank spaces
	     if(id!="" && name!="" && address!="" && phone!="" && image!="" && information!="") {
	                 try {
              /* Create a connection by using getConnection()
              method that takes parameters of string type 
              connection url, user name and password to connect 
		to database. */
              connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sohel", "root", "12345678");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO rana(id, name, address, phone, image, information) VALUES (?, ?, ?, ?, ?, ?)";
              	      /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
                          pstatement.setString(1, id);
			  pstatement.setString(2, name);
			  pstatement.setString(3, address);
                          pstatement.setString(4, phone);
			  pstatement.setString(5, image);
			  pstatement.setString(6, information);
                          
              updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully in database.</th></tr>
		   </table>
                 
              <%
              }

            } 
            catch (Exception ex) {
            out.println("Unable to connect to batabase.");
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
	  }
	}
%>

</CENTER>
</FORM>
  </FORM>
 </body> 
</html>