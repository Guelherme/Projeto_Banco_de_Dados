<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Snake Game</title>
<style type="text/css">

	#canvasJogo{
	position:absolute;
	left:45%;
	top:30%;
	margin-left:-100px;
	magin-top:-30px;

	/* reset de margens */
* {
    margin: 0;
    padding:0;
}

/* para garantir que estes elementos ocuparão toda a tela */
body, html {
    width: 90%;
    height: 90%;
    font-family: Arial, Tahoma, sans-serif;
}

#fundo-externo {
    overflow: hidden; /* para que não tenha rolagem se a imagem de fundo for maior que a tela */
    width: 90%;
    height: 90%;
    position: relative; /* criamos um contexto para posicionamento */
}

#fundo {
    position: fixed; /* posição fixa para que a possível rolagem da tela não revele espaços em branco */
    width: 90%;
    height: 90%;
}

#fundo img {
    width: 90%; /* com isso imagem ocupará toda a largura da tela. Se colocarmos height: 100% também, a imagem irá distorcer */
    position: absolute;
}

#site {
    position: absolute;
    top: 30px;
    left: 45%;
    width: 560px;
    padding: 20px;
    margin-left: -300px; /* por causa do posicionamento absoluto temos que usar margem negativa para centralizar o site */
    background: #FFF; /* fundo branco para navegadores que não suportam rgba */
    background: rgba(255,255,255,0.8); /* fundo branco com um pouco de transparência */
}

p {
    margin-bottom: 1.5em;
}


</style>
<script src = "cobra.js" type="text/javascript"> </script>
</head>
<body>
	<nav class="navbar navbar-default">
  		<div class="container-fluid">
    		<div class="navbar-header">
      		<a class="navbar-brand" href="#">WebSiteName</a>
    		</div>
    		<ul class="nav navbar-nav">
      		<li class="active"><a href="#">Home</a></li>
      		<li><a href="#">Page 1</a></li>
      		<li><a href="#">Page 2</a></li>
      		<li><a href="#">Page 3</a></li>
    		</ul>
  		</div>
	</nav>
	<canvas id="canvasJogo" width="400" height="400">
		</canvas>
		<div id="fundo-externo">
		  	<div id="fundo">
				<img src ="img\snake.jpg" alt="" />		  	
		  	</div>
		</div>
</body>
</html>