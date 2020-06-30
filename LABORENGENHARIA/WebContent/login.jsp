<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="estilo.css" />
</head>
<body>
	<div class="container">
		<a class="links" id="paralogin"></a> <a class="links"
			id="paracadastro"></a>

		<div class="col-md-3">
			<!-- Formulario de Login -->
			<div id="login">
				<form method="post" action="login">
					<h1>Login</h1>
					<p>
						<label for="nome_login">Usuario</label> 
						<input id="nome_login" name="nome_login" required="required" type="text" placeholder="ex. usuario@dom.com" />
					</p>
					
					<p>
						<label for="senha_login">Sua senha</label> <input id="senha_login"
							name="senha_login" required="required" type="password"
							placeholder="ex. 1234" />
					</p>

					<p>
						<input type="checkbox" name="manterlogado" id="manterlogado"
							value="" /> <label for="manterlogado">Manter-me logado</label>
					</p>

					<p>
						<input type="submit" value="Logar" />
					</p>

					<p class="link">
						Ainda não tem conta? <a href="#paracadastro">Cadastre-se</a>
					</p>
				</form>
			</div>


			<!-- FORMULARIO DE CADASTRO -->

			<div id="cadastro">
				<form method="post" action="">
					<h1>Cadastro</h1>

					<p>
						<label for="nome_cad">Seu nome</label> <input id="nome_cad"
							name="nome_cad" required="required" type="text"
							placeholder="nome" />
					</p>
					
					<p>
						<label for="nome_cad">Usuario</label> <input id="nome_cad"
							name="nome_cad" required="required" type="text"
							placeholder="Usuario para login" />
					</p>
					<p>
						<label for="senha_cad">Sua senha</label> <input id="senha_cad"
							name="senha_cad" required="required" type="password"
							placeholder="ex. 1234" />
					</p>
					
					<p>
						<label for="senha_cad">Telefone</label> <input id="telefone_cad"
							name="telefone_cad" required="required" type="text"
							placeholder="Ex: 0000-0000" />
					</p>

					<p>
						<label for="email_cad">Seu E-mail</label> <input id="email_cad"
							name="email_cad" required="required" type="email"
							placeholder="Usuario@gmail.com" />
					</p>
					

					<p>
						<button type="submit" class="btn btn-pri" name="cmd" value="adicionar">Adicionar</button>
					</p>

					<p class="link">
						Ja tem conta? <a href="#paralogin">Ir para Login</a>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>