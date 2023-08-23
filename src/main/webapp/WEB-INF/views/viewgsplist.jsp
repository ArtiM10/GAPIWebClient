<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
  
<table border="2" width="70%" cellpadding="2">  
	<tr>
		<th>Version</th>
		<th>Name</th>
		<th>ipAddress</th>
		<th>Server Time</th>
		<th>License Expiry</th>
	</tr>  
   <c:forEach var="sys" items="${list}">   
   <tr>  
	   <td>${sys.sysVersion}</td>  
	   <td>${sys.sysName}</td> 
	   <td>${sys.sysipAddress } </td>
	  
   
   </tr>  
   </c:forEach>     
   </table>  