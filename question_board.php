<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Painel de Questões</title>
	<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/cosmo/bootstrap.min.css" rel="stylesheet" integrity="sha384-qdQEsAI45WFCO5QwXBelBe1rR9Nwiss4rGEqiszC+9olH1ScrLrMQr1KmDR964uZ" crossorigin="anonymous">
	<style>
        .wrapper{ 
        	width: 1400px; 
        	padding: 60px; 
        }
        .wrapper h1 {text-align: center}
        .wrapper form .form-group span {color: red;}
	</style>
</head>
<body>
	<main>
		<section class="container wrapper">
			<div class="page-header">
				<h1>Painel de Questões</h1>
			</div>
            <a href="question_board.php" class="btn btn-block btn btn btn-outline-primary">Lista de Perguntas Adicionadas</a>
			<a href="add_question.php" class="btn btn-block btn btn-outline-info">Adicionar uma Pergunta</a>
            <a class="btn btn-block btn-link bg-light" href="welcome.php">Sair</a>
		</section>
	</main>
</body>
</html>