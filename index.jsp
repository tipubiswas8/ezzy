<%-- 
Index page is first or main page of code
When run the application the index page are open in browser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        <title>Ezzy Group</title>
         <%--
        Title is Ezzy Automation 
        Like Facebook
        It position is  or (Show in) Browser tab
        --%>
        
    </head>
    <body>
        <%--
        Body is called the total page of window
        All component are add inside of body
        --%>
        
        <h1> <center> Welcome to Ezzy Automations Ltd.</center></h1>
        <%-- 
        By h1,h2,h3......h7 are use to set the size of paragraph
        h1 is very large size and h7 is very small size
        --%>
        

        <jsp:include page="tipu.jsp" />
        <jsp:include page="data.jsp" />
        <%--
        The include directive is used to 
        include the contents of any resource 
        it may be jsp file, html file or text file.
        --%>
    </body>
</html>
