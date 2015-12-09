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
    <div class="col-xs-12 col-md-9 col-md-pull-3">
    <div class="table-responsive">
    <table border="1" width="100%" cellpadding="3" cellspacing="3"  class="table table-bordered">

        <tr>
            <th width="10%" align="center">Item ID</th>
            <th align="center">Item Name</th>
            <th align="center">Category</th>
            <th width="10%" align="center">Status</th>
            <th width="10%" align="center">Action-Borrow</th>
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