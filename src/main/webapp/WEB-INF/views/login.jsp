<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NetApp Global File Credentials</title>  
</head>
<style>
*{
   margin:0;
   padding:0;
}  

button{

 background-color:lightgrey;
  color: black;
  padding: 14px 20px;
  margin: margin-left
  transform: translateX(-%50);
  border: none;
  cursor: pointer;
  width: 120px
  height: 34px;
  font size: 18px;
  font-weight:700;
  font-family: sans-serif;


 }

Body {  
   
  font-family: sans-serif;  
  background-color: white; 
  
}  

 form {   
 
  width: 100%
   height: 100%
   padding: 20px;
   background: white;
        
       
       
        
  
    }
    
    table{                      

border-spacing:40px;


} 

 


tr{
 
 
 font-weight:700
 
 
} 

input[type=text], input[type=password] {   
        width: 600px;   
        margin: 10px,0; 
        padding: 12px 20px;   
        display: inline-block;   
        border radius: 4px solid black;   
        box-sizing: border-box; 
        text-align: left;
        
        
       
       
  
    }  
    
    
     
 .container {   
        padding: 50px; 
        margin:8,0;  
        background-color: white; 
        text-align: center;         
    }

.header{ 
      
        background-color: #3380cc;
        text-align: center;
        padding: 40px;
        color: white;
        font-family: sans-serif;
     } 

</style>























</style>
<body>
	<form:form name="submitForm" method="POST" >
    
		<div class="header">  
   <h1> NetApp Global File Configuration System Login </h1>  
   </div>
   
     
        <div class="container"> 
         <div align="center">
          
           <table>
            <tr>
                <td> Username </td>
                <td><input type="text" name="userName"/></td>
            </tr>
            <tr>
            <td>Password</td>
            <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit" value="Submit">Login</button>
	    </tr>
           </table>
           <div style="color: red">${error}</div>
			<div style="color: red">${msg}</div>
           
           </div>
           </div>
           
           </form:form>
           
</body>
</html>