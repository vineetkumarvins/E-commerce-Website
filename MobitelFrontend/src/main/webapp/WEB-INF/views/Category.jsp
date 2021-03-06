<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="AdminHeader.jsp" %>

</br>
</br>
</br>
</br>
<!-- Category Form Started -->
<c:if test="${flag}">
	<form action="../UpdateCategory" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddCategory" method="post">
</c:if>

	<table align="center" cellspacing="2">
		<tr>
			<td colspan="2">Category Details</td>
			<c:if test="${flag}">
			<input type="hidden" name="catid" value="${category.catid}" required/>
			</c:if>
		</tr>
		<tr>
			<td>Category Name</td>
			<c:if test="${flag}">
				<td><input type="text" name="catname" value="${category.catname}" required/></td>
			</c:if>
			<c:if test="${!flag}">
				<td><input type="text" name="catname" required/></td>
			</c:if>
		</tr>
		<tr>
			<td>Category Description</td>
			<c:if test="${flag}">
				<td><input type="text" name="catdesc" value="${category.catdesc}" required/></td>
			</c:if>
			<c:if test="${!flag}">
			<td><input type="text" name="catdesc" required/></td>
			</c:if>
		</tr>
		<tr>
			<td colspan="2"> <!-- <input type="submit" value="AddCategory" /></td> -->
					<c:if test="${flag}"><input type="submit" value="UpdateCategory"/></c:if>
		            <c:if test="${!flag}"><input type="submit" value="AddCategory"/></c:if>
		</tr>
	</table>
</form>
<!-- Category Form Completed -->
<br>
<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${catdetail}" var="category">
		<tr bgcolor="cyan">
			<td>${category.catid}</td>
			<td>${category.catname}</td>
			<td>${category.catdesc}</td>
			<td><a href="<c:url value="deleteCategory/${category.catid}"/>">Delete</a>
				<a href="<c:url value="updateCategory/${category.catid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->
<br>
<br>
<br>
</body>
</html>
<%@ include file="Footer.jsp" %>