<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
    response.sendRedirect("index.jsp");
    return;} %>

<jsp:useBean id="delete" type="java.sql.ResultSet" scope="request"/>
   
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
    
        <form action="inventoryprocess.html" method="post" style="float:right;">
        <input type="submit" value="Go Back" class="btn btn-danger"
                    id="form-button" />
        </form>
    
    <br>
    <br>
    <br>
    <br>
        <div class="table-responsive">    
            <a href="deletedlist.html">View Deleted Items</a>
        
            <table class="table table-striped table-bordered" role="table">
                <caption>Select the Item to be deleted.</caption>
                <i>Note: Currently borrowed items cannot be deleted. </i>
                <tr>
                    <th>Item ID</th>
                    <th>Item Name</th>
                    <th class="action-borrow-col">Action-Delete</th>
                </tr>
                
                <% while(delete.next()) {    %>
                <tr>
                    <td><%=delete.getInt("itemId")%></td>
                    <td><%=delete.getString("itemName")%></td>
                    <td class="action-borrow-col">
                      <a href="deletespecificitem.html?itemId=<%=delete.getString("itemId")%>&action=delete">
                          <img id="borrow-img" src="images/garbage-icon.png"/>
                      </a>
                    </td>
                </tr>            
                <% } %>
            </table>

        </div>
    </div>
</body>
</html>