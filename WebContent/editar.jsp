<%@page import="modelo.Livro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    
    <h1>Cadastro de Livros</h1>
    <br />
    <br />
    
    <hr />
    
    <br />
    
	<form action="livrocontrole.jsp?cmd=gravarEdicao" method="post" >
		<%
		   Livro livro = (Livro) request.getAttribute("livro");
		%>
		
		<p> 
		   Código
		   <input type="text" name="codigo" value="<%=livro.getCodigo() %>" readonly="readonly">
		</p>
		
	   <p>
	      Nome
	      <input type="text" value="<%=livro.getNome() %>" name="nome" size="80">
	   </p>
	   
	   <p>
	     Autor
	     <input type="text" value="<%= livro.getAutor() %>" name="autor" size="80">
	   </p>
	   
	   <p>
	      <input type="submit" value="Gravar"> 
	   </p>
	   
	
	</form>    
    


</body>
</html>




