<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Tiny Details</h1>
<table  id="myTable">
<thead>
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Innovation</th>
<th>Year</th>
</tr>
</thead>
<tbody>
<c:forEach var="completedetail" items="${completedetails}">
<tr>
<td>${completedetail.getFirstName() }</td>
<td>${completedetail.getLastName() }</td>
<td>${completedetail.getInnovation() }</td>
<td>${completedetail.getYear() }</td>
</tr>
</c:forEach>
</tbody>
</table><br /><br />
<a href="#" onclick="sortTable()">Sort List By Year</a>
<a href="/">Tiny List</a>
</body>
<script>
function sortTable() {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("myTable");
  switching = true;
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      x = rows[i].getElementsByTagName("TD")[3];
      y = rows[i + 1].getElementsByTagName("TD")[3];
      // Check if the two rows should switch place:
      if (x.innerHTML < y.innerHTML) {
        // If so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
</script>
</html>