
<%@ page import="java.util.*,modelo.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
		LivroDAO dao = new LivroDAO();
		List<Livro> livros = dao.listar();
		%>

	<h1>Lista de Livros</h1>
	<br />
	<br />
	<hr />
	<br />

	<p>
	    <a href="index.jsp">Criar novo Livro</a>
	</p>

	<table width="80%" border="1" cellpadding="1" cellspacing="1">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Autor</th>
			<th>Opções</th>
		</tr>
		
		<% 
   			
		if(livros != null)
			for(Livro livro : livros){
		%>
		<tr>
		    <!-- Expressão -->
			<td> <%= livro.getCodigo() %> </td>
			<td> <%= livro.getNome() %>   </td>
			<td> <%=  livro.getAutor() %>   </td>
			<td> 
<a href="livrocontrole.jsp?cmd=delete&codigo=<%= livro.getCodigo() %>">Deletar</a>
	|
<a href="livrocontrole.jsp?cmd=editar&codigo=<%= livro.getCodigo() %>">Editar</a>

			</td>
		</tr>
		<% } %>
		
	</table>




</body>
</html>


