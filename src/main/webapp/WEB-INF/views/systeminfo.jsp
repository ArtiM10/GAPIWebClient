<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="gfc_homepage.css"> 
</head>
<body>

<div class="header">
  <h1>NetApp Global File Cache</h1>
</div>

<div class="sidebar">
   
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">License Configuration</a></li>
            <li><a href="#">Core Configuration</a></li>
            <li><a href="#">Edge Configuration</a></li>
            
        </ul> 
</div>
<div class="SystemOverview">
<div align="center">
    <h2>Home > System Overview > System Information</h2>
</div>
</div>


<div class="SystemInformation">
<div align="center">
<table>
       <tr>
           <th>Software Version: </th>
       </tr>
           <th>System Name: </th>
       <tr>
           <th>IP Address: </th>
       </tr>
           <th>Server Up time: </th>
      </tr> 
      <tr>
           <th>License Expiry: </th>
       </tr>
      <tr>
           <th>Cluster Configuration: </th>
       </tr> 

<c:forEach var="sys" items="${list}">   
   <tr>  
	   <td>${sys.sysVersion}</td>  
	   <td>${sys.sysName}</td> 
	   <td>${sys.sysipAddress } </td>
	  
   
   </tr>  
   </c:forEach>     
   </table>  
       
 

      
</body>
</html>