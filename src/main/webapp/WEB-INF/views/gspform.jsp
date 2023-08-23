<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
       <form:form method="post" action="save">    
        <table >    
         <tr>    
          <td>Version : </td>   
         </tr>    
         <tr>    
          <td>Name :</td>    
         </tr> 
         <tr>
         <td> IpAddress:</td>
         </tr>
         <tr>
         <td>LicenseExpiry: </td>
         </tr>
         <tr>
         <td>Server time: </td>
         </tr>
         
          <tr>    
          <td colspan="2"><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>     
       
       