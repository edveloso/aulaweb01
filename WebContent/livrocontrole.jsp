<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="modelo.*"  %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   
   
   <% //scriptlet
      /*
        comentário
      */
  	  String nome  =  request.getParameter("nome");
   	  String autor = request.getParameter("autor");
   	  
   	  Livro livro  = new Livro();
   	  livro.setNome(nome);
   	  livro.setAutor(autor);
   	  
   	  LivroDAO dao = new LivroDAO();
   	  dao.salvar(livro);
   	  
	  out.print("o nome recebido foi: "+ nome);
	  out.print("<br /> o autor recebido foi: "+ autor);
   %>

	<br />  
	<!-- Linguagem de expressão ou EL -->
	 Veio ${param.nome} e ${param.autor}
	 
	 
	 <br />
	 

</body>
</html>


