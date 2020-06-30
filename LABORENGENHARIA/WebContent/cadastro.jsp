<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%-- Utilização do bootStrap --%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<title>Formulario</title>
</head>
<body>
<%

	
	String res = null;

	res = String.valueOf(request.getAttribute("resultado"));

	if(res.equals("false")){

    out.print("<script>"); 
    out.print("alert('CadastradoInválido');"); 
    out.print("</script>");

}

%>
<div>
	<%-- garante que o layout fica alinhado --%>
	<div class="container">
		<h1>Formulario para Cadastro de usuario</h1>
	</div>

	<%-- Nome  --%>
	<%-- Post - é uma solicitação usada para alteração de banco de dados  --%>
	<form action="Cadastra" method="POST">
		<div class="col-md-3">
			<label>Nome </label>
			<input type="text" name="nome" class="form-control" placeholder="Informe seu nome" id="campo1" required/>
		</div>
		 	<br>
		 	
		 	<div class="col-md-3">
            <label>User</label>
            <input type="text" name="nome" class="form-control" placeholder="Informe seu usuario" id="campo2" required/>
        </div>
             <br>
		 <div class="col-md-3">
			<label class="control-label" for="user_password2">Senha</label>
			<input class="password form-control" name="senha" placeholder="Informe sua senha" id="campo2" data-component="password-strength" data-monitor-id="password-strength-monitor" type="password" required>
			<div class="form-inline">
				<div class="input-group col-md-4 f-left">		
					<a class=" input-group-addon toggle-pass ico-eye" data-classtoggle="ico-eye,ico-eye-blocked" data-target="#user_password2" href="#"></a>
				</div>
			</div>
		</div>
		<br>
		 	
		 			 	
      	<%-- Telefone  --%>
      	<div class="col-md-3">
    		<label>Telefone</label>
    		<input type="text" name="telefone" class="form-control phone-ddd-mask" id="campo4" placeholder="Ex.: (00) 0000-0000"required>
  		</div>
		<br>      	
      	
      	<%-- Email  --%>
    	<div class="col-md-6">
      		<label>Email</label>
      		<input type="text" name="email" class="form-control" id="campo7" placeholder="Informe seu email" required>
    	</div>
    	<br>
    		
		
		<div class="form-group">
			<button type="submit" class="btn btn-secondary">Confirmar</button>
		</div>
	</form>
	
	<table style="margin-top: 20px" class="table">
		<thead class="thead-light">
			<tr>
				<th scope="col">Codigo</th>
				<th scope="col">Nome</tmh>
				<th scope="col">Usuario</th>
				<th scope="col">Senha</th>
				<th scope="col">Telefone</th>
				<th scope="col">Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="usuario">
				<tr>
					<td>${usuario.codigo}</td>
					<td>${usuario.nome}</td>
					<td>${usuario.usuario}</td>
					<td>${usuario.senha}</td>
					<td>${usuario.telefone}</td>
					<td>${usuario.email}</td>
					<td><a href="/LABORENGENHARIA/Cadastra?id=${usuario.codigo}">Alterar</a></td>
					<td><a href="/LABORENGENHARIA/ecluirUsuario?id=${usuario.codigo}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>