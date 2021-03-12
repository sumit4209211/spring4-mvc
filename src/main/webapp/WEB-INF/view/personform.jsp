<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-US">
<head><title>Spring 4 MVC + Hibernate</title>
</head>
<body>
  <form:form  id="myform" action="addPerson" method="POST" commandName="person">
       <h3> <c:if test="${person.msisdn==0}">
			         Add New Person
	        </c:if>
			<c:if test="${person.msisdn!=0}">
			         Update Person for Id: <c:out value="${person.msisdn}"/>
					 <form:hidden path="msisdn"/>
	        </c:if>
       </h3>
	  <table>
	    <tr> <td>User Name:</td> <td><form:input  path="created"/><form:errors path="created" cssClass="error-msg"/> </td> </tr>
	    <tr> <td>Password:</td> <td><form:password path="password"/><form:errors path="password" cssClass="error-msg"/> </td> </tr>
	    <tr> <td>Age: </td> <td><form:input path="age"/><form:errors path="age" cssClass="error-msg"/> </td> </tr>
	    <tr> <td>Gender: </td> 
	         <td> <form:radiobuttons path="gender" items="${genderOptions}"/>
	             <form:errors path="gender" cssClass="error-msg"/> </td> </tr>    
	    <tr> <td>ADDRESS:</td> <td> 
	        <form:select path="Address">
	           <form:option value="" label="--Select ADDRESS--"/>
	        
            </form:select>  
            <form:errors path="address" cssClass="error-msg"/> 
	    </td> </tr>
	    <tr> <td colspan="2">
			 <c:if test="${person.msisdn!=0}">
				<input type="button" value="Accept" id="btn-accept"> 
		   </c:if>
		   <c:if test="${person.msisdn!=0}">
			<input type="button" value="Reject" id="btn-reject"> 
	   </c:if>
		</td> </tr>
		<tr> <td colspan="2" class="success-msg">
		   <c:out value="${msg}"/>
		</td> </tr>
	  </table>
	  <table>               
      <h3> <c:if>
     -------------------------------------------------------------------------------
	
	                   Verification
		
	-------------------------------------------------------------------------------
	        </c:if>
			
       </h3>      
                  
	      <tr>   <td> MSISDN </td> <td> SIM_TYPE </td> 
		         <td> NAME </td>
				 <td> DATE_OF_BIRTH </td>  <td>GENDER</td>
				 <td> ID_NUMBER </td>
				 <td colspan="2"> ADDRESS </td>
		  </tr>
    	  <c:forEach var="obj" items="${allData}">
		      <tr>
		         <td> <c:out value="${obj.msisdn}"/> </td>
		         <td> <c:out value="${obj.created}"/> </td>
                 <td> <c:out value="${obj.name}"/> </td>
				 <td> <c:out value="${obj.dateofbirth}"/> </td>
                 <td> <c:out value="${obj.idnumber}"/> </td>
				 <td> <c:out value="${obj.gender}"/> </td>
				 <td> <c:out value="${obj.address}"/> </td>
                 <td> <c:out value="${obj.simtype}"/> </td>
                 -------------------------------------------------------------------------------	
	
				 <td> <a href="${pageContext.request.contextPath}/deletePerson?msisdn=${obj.msisdn}">[Accept] </a> | <a href="${pageContext.request.contextPath}/personById?msisdn=${obj.msisdn}">[Reject]</a> 
				 </td>
                 
                 -------------------------------------------------------------------------------	
	
		      </tr>
	      </c:forEach>
      </table> 
  </form:form>
  <script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>
  
</body>
</html>