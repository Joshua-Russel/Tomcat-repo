<%@ include file="./views/partials/header.jsp"%>
       <div> 	<h1>Welcome <%= session.getAttribute("user")%></h1>
       <%=session.getMaxInactiveInterval()%></div>
        <%@ include file="./views/partials/footer.html"%>
	
	
	
