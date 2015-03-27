<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 
	as diretivas são recursos usados para enviar 
     diversos comandos ao servidor. Dentre estes
     comandos, inclue-se a importação de classes 
     nas páginas JSP 
 -->
<%@ page import="modelo.*,java.util.*"  %>    
    
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
      LivroDAO dao = new LivroDAO();
  	  String nome  =  request.getParameter("nome");
   	  String autor = request.getParameter("autor");
   	  String cmd = request.getParameter("cmd");
   	  String codigo = request.getParameter("codigo");
   	  
   	  if("delete".equals(cmd)){
   		   Integer numCodigo = Integer.parseInt(codigo);
   		   dao.deletar(numCodigo); 
   		 	List<Livro> livros = dao.listar();
	   	  session.setAttribute("livros", livros);
	   	 request.getRequestDispatcher("lista.jsp")
	   	 							.forward(request, response);
   	  }
   	  else if("editar".equals(cmd)){
   		 Integer numCodigo = Integer.parseInt(codigo);
   		 Livro livro = dao.getByCodigo(numCodigo);
   		 request.setAttribute("livro", livro);
   		request.getRequestDispatcher("editar.jsp")
   		 					.forward(request, response);
   		  
   	  }else if("gravarEdicao".equals(cmd)){
   		Integer numCodigo = Integer.parseInt(codigo);
   		Livro livro  = new Livro();
   		livro.setCodigo(numCodigo);
	   	  livro.setNome(nome);
	   	  livro.setAutor(autor);
	   	  dao.atualizar(livro);
	   	List<Livro> livros = dao.listar();
	   	  session.setAttribute("livros", livros);
	     request.getRequestDispatcher("lista.jsp")
	         .forward(request, response);
   	  }else{
	   	  Livro livro  = new Livro();
	   	  livro.setNome(nome);
	   	  livro.setAutor(autor);
	   	  dao.salvar(livro);
		  List<Livro> livros = dao.listar();
	   	  session.setAttribute("livros", livros);
	   	 
	   	 request.getRequestDispatcher("lista.jsp")
	   	 							.forward(request, response);
   	  }
	out.print(codigo);
	  
   %>



</body>
</html>





