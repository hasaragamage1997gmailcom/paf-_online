<%@ page import="com.praticle_10.model.Item" %>
<%@ page import ="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    Item item new Item();
    String itemsGrid = "";
    String rudFeedback = "";
    
    if(request.getParameter("hidMode") != null && request.getParameter("hidMode").equalsIgnoreCase("save"))
    {
    rudFeedback = item.saveAnItem (request.getParameter("txtItemName"), request.getParameter("txtItemDesc"));
    
    }
    
     if(request.getParameter("hidMode") != null && request.getParameter("hidMode").equalsIgnoreCase("update"))
     {
     rudFeedback = item.updateAnItem (request.getParameter("hidID"), request.getParameter("txtItemName"));
     }
     
     if(request.getParameter("hidMode") != null && request.getParameter("hidMode").equalsIgnorCase("remove"))
     {
     rudFeedback = item.deleteAnItem(request.getParameter("hidID"));
     }
     
     itemGrid = Item.getItem();
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items</title>
<script type="text/javascript"> src="Controllers/jQuery.js"</script>
<script type="text/javascript"> src="Controllers/controllerMain.js"</script>
</head>
<body>

<from id="formItem" action="items.jsp" method="post">
<input id="hidMode" name="hidMode" type="hidden" value="save">
<input id="hidID" name="hidID" type="hidden" value="0">
Item Name:<input id="txtItemName" name="txtItemName" type="text"><br>
Item Description:<input id="txtItemDesc" name="txtItemDesc" type="text"><br>
<input id="btnsave" name="btnsave" type="button" value="save"><br>
<div id="divStvMsglogin">< %out.println(rudFeedback); %></div>
< %out.println(itemGrid); %>

		</from><br>
</body>
</html>