<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
  <title>Jogos Online</title>

<link rel="icon" href="images/icone.png" type="image/icon">
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />

<body>

<%
String res = null;

res = String.valueOf(request.getAttribute("resultado"));

if(res.equals("false")){

	out.print("<script>"); 
	out.print("alert('Usuário ou Senha incorretos');"); 
	out.print("</script>");

}else if(res.equals("true")){
	out.print("<script>"); 
	out.print("alert('Usuário cadastrado com sucesso');"); 
	out.print("</script>");

}else{
	
}
res = null;
%>
<section class="form">
 <div class="section-title">
 	<br>
 	<br>
        <div class="container">
        <h1>Seu login</h1>
    </div>
 </div>
 <br>
 	
<%-- Post - é uma solicitação usada para alteração de banco de dados  --%>
    <form action="escolhaJogo.jsp" method="post">
        <div class="col-md-3">
            <%-- Login  --%>
            <label>Login </label>
            <input type="text" name="usuario" class="form-control" placeholder="Informe seu usuario" id="campo1" required/>
        </div>
             <br>

          <%-- Senha  --%>
          <div class="col-md-3">
            <label>Senha</label>
            <input type="text" name="senha" class="form-control" id="campo4" placeholder="Informe sua senha" tabindex=2 required>
          </div>
          <br>
          <div >
              <button type="submit" class="btn btn-primary" name="cmd" value="adicionar" tabindex=3>Entrar</button>            
              <button type="submit" class="btn btn-secondary" name="cmd" value="pesquisar">Não possui cadastro</button>
          </div>
        <br>
    </form>
   </section>
</body>
</html>