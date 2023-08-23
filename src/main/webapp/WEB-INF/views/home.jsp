<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<html lang="en">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Success Form</title>
<link rel="stylesheet" href="homepage.css">
</head>
<body>





<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.header {
  background-color: #3380cc;
  padding: 10px;
  text-align: left;
  color: white;
  font-family: sans-serif;
}


body {
  margin: 0;
  
}

 .sidebar{

  width: 250px;
  position: absolute;
  height: 100%;
  background: rgba(0,0,0,0.1)
  border-radius: 10px;
  box-shadow: 5px 7px 10px rgba(0,0,0,.5)

 
}

 .sidebar ul{
  position: relative;
  list-style-type:none;
 
 
} 

  .sidebar ul li a {
  display: flex;
  align-items: center;
  font-family:  sans-serif;;
  font-size: 1.15em;
  text-decoration: none;
  text-transform: capitalize;
  color:#3380cc;
  padding: 10px 30px;
  height: 50px;
  

}


 .sidebar ul li:hover{
  background-color: lightgray;
  color: gray;
}
    
 .sidebar ul li:hover a{
  background: rgba(0,0,0,0.7);
  color: #fff;

}

.SystemInformation th{

  
  padding-top: 14px;
  padding-bottom: 14px;
  text-align: left;
  font-family: sans-serif;

}

.SystemOverview h2{

  padding-top: 14px;
  padding-bottom: 14px;
  color:blue
  font-family: sans-serif;
  
  


}
 











</style>
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