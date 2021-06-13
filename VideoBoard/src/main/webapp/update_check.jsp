<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="DB.*"%>
<html>
<body></body>
<script>
<%
	request.setCharacterEncoding("utf-8");

	int id = Integer.parseInt(request.getParameter("id"));
	String password = request.getParameter("password");
	VideoRepo repo = new VideoRepo();
	if(repo.passwordCheck(id, password)){
		%> 
			var form = document.createElement("form");
		    form.setAttribute("method", "POST");
		    form.setAttribute("action", "update.jsp");
		 
	        var hiddenField = document.createElement("input");
	        hiddenField.setAttribute("type", "hidden");
	        hiddenField.setAttribute("name", "id");
	        hiddenField.setAttribute("value", <%=id%>);
	 
	        form.appendChild(hiddenField);
		 
		    document.body.appendChild(form);
		    form.submit();
		<%
	} else {
		%>	
			alert('비밀번호가 다르거나 존재하지 않는 비디오입니다.');
			history.back();
		<%
	}
		
	repo.close();
%>
</script>
</html>