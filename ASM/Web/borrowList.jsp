<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
    response.sendRedirect("index.jsp");
    return;} %>
 
<jsp:useBean id="borrowed" type="java.sql.ResultSet" scope="request"/>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css"/>
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
table #borrow-img {
    height: 3em;
    width: 3em;
}
table .action-borrow-col {
    width: 10em;
    text-align: center;
}
</style>
</head>
<body>
    <%@include file="navbar.html" %>
      
    
    <div class="container">
    	<form action="inventoryprocess.html" method="post" style="text-align:right;">
	        <input type="submit" value="Go back to inventory" class="btn btn-danger"
	                    id="form-button" />
        </form>
        <div class="table-responsive">    
            <table class="table table-striped table-bordered" role="table">
                <caption>List of available items for borrowing.</caption>
                <tr>
                    <th>Item ID</th>
                    <th>Item Name</th>
                    <th>Category </th>
                    <th class="action-borrow-col">Action-Borrow</th>
                </tr>
                
                <% while(borrowed.next()) {    %>
                <tr>                    
                    <td><%=borrowed.getString("itemId") %>
                    <td><%=borrowed.getString("itemName")%></td>
                    <td><%=borrowed.getString("category")%></td>
                    <td class="action-borrow-col">
                      <a href="borrowspecificitem.html?itemId=<%=borrowed.getString("itemId")%>&action=borrow">
                          <img id="borrow-img" src="images/borrow-black.png"/>
                      </a>
                    </td>
                </tr>            
                <% } %>
            </table>

        </div>
    </div>
</body>
</html>