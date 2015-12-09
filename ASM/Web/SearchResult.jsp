
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="search" type="java.sql.ResultSet" scope="request" />


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Results</title>
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
    <%if (!search.isBeforeFirst()) { %>
    <h2>Record does not exist.</h2>
    <%}
    else {%>
    <center>
    <h2>List of Activities</h2>
    </center>
    
    <div class="container">
        <div class="table-responsive">    
            <table class="table table-striped table-bordered" role="table">
                <caption>List of items found.</caption>
                <tr>
                    <th>Item ID</th>
                    <th>Item Name</th>
                    <th>Category </th>
                    <th>Status</th>
                    <th class="action-borrow-col">Action-Borrow</th>
                </tr>

        <% 
                    while(search.next()) {    
        %>
        <tr>
            <td width="10%" align="center"><%= search.getInt("itemId")%></td>
            <td align="center"><%= search.getString("itemName")%></td>
            <td align="center"><%= search.getString("Category")%></td>
            <td width="10%" align="center"><%= search.getString("status")%></td>
            <td class="action-borrow-col">
                      <a href="borrowspecificitem.html?itemId=<%=search.getString("itemId")%>&action=borrow">
                          <img id="borrow-img" src="images/borrow-black.png"/>
                      </a>
                    </td>
        </tr>
        <% } %>
    </table>
     </div>
    <%} %>
    </div>
</body>
</html>