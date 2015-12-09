<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.io.*,java.util.*"%>
<%@ page session="false" %>
<% if (request.getSession(false)==null) {
	response.sendRedirect("index.jsp");
	return;} %>

<jsp:useBean id="inventory" type="java.sql.ResultSet" scope="request" />

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./styles/bootstrap.min.css" />
<link rel="stylesheet" href="./main.css"/>
<link rel="icon" type="image/png" href="./images/ust-iics-is-logo.png" />
<title>Asset Management System</title>
<style type="text/css">
body {
    padding-top: 10em;
}

#buttons {
    text-align: center;
    margin: 3em 0;
}

#buttons form {
    display: inline;
}

#buttons .btn {
    text-transform: uppercase;
    font-size: 1.2em;
    border: none;
    margin: .5em;
    width: 9.5em;
    height: 9.5em;
    background-size: 8.5em;
    background-position: top;
    background-repeat: no-repeat;
    padding-top: 6.5em;
}

#buttons #add-new-button {
    background-image: url("./images/new.png");
}

#buttons #delete-button {
    background-image: url("./images/delete.png");
}

#buttons #borrow-button {
    background-image: url("./images/borrow.png");
}

#buttons #return-button {
    background-image: url("./images/return.png");
}
table .status {
    text-align: center;
}
form-inline {
padding :5em;
}
</style>
</head>
<body>
    <%@include file="navbar.html" %>
    <div class="container">
    <div class="form-inline">
        <form action="searchprocess.html" method="post" style="float:right;">
        <input type="text" name="searchWord" size="20" class="form-control"/>
        <input type="submit" value="Search" class="btn btn-primary"
                    id="form-button" />
        
        </form>
    </div>
        <div class="row">
        <br>
        <br>
        <br>
        <br>
        
            <!-- buttons -->
            <div id="buttons" class="col-xs-12 col-md-3 col-md-push-9">
                <!-- Unreturned Items Button -->
                 <form action="listborrowedprocess.html" method="post">
                    <input id="borrow-button" type="submit" value="Unreturned Items" class="btn btn-default">
                </form>
                
                <!-- Borrow Item Button -->
                <form action="listborrowprocess.html" method="post">
                    <input id="borrow-button" type="submit" value="Borrow" class="btn btn-default">
                </form>
                <!-- Return Item button -->
                <form action="returnForm.jsp" method="post">
                    <input id="return-button" type="submit" value="Return" class="btn btn-default">
                </form>
                <!-- Add New Item Button -->
                <form  action="addItem.jsp" method="post">
                    <input id="add-new-button" type="submit" value="New" class="btn btn-default">
                </form>
                <!-- Delete Item button -->
                <form action="listdeleteprocess.html" method="post">
                    <input id="delete-button" type="submit" value="Delete" class="btn btn-default">
                </form>
            </div>
            <div class="col-xs-12 col-md-9 col-md-pull-3">
                <!-- inventory table  -->
                <div class="table-responsive"> 
                    <table class="table table-bordered" role="table">
                        <caption>Here is a list of all assets.</caption>
                        <tr>
                            <th>Item ID</th>
                            <th>Item Name</th>
                            <th>Category </th>
                            <th class="status">Status</th>
                        </tr>
                        <%
                            while (inventory.next()) {
                        %>
                        <tr class=<%=(inventory.getString("status").toUpperCase().equalsIgnoreCase("AVAILABLE")) ? "success" : "danger"%>>
                            
                            <%-- <td><%=String.format("%04d", inventory.getInt("itemId"))%></td> --%>
                    
                            <td><%=inventory.getString("itemId") %>
                            <td><%=inventory.getString("itemName")%></td>
                            <td><%=inventory.getString("category")%></td>
                            <td class="status"><%=inventory.getString("status").toUpperCase()%></td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="./scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="./scripts/bootstrap.min.js"></script>
</body>
</html>