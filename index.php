<?php
	# Criado por - Fabrício da Silva Dias.
	# silvadias22@gmail.com
	# https://github.com/silvadias22
	# https://gist.github.com/silvadias22

	include ('conn.php');
?>
<html>
	<head>
		<meta charset="utf8">
		<!-- Sobre as bibliotecas, nesse projeto, será utilizado o bootstrap para modelar a interface visual -->
		<link rel="stylesheet" href="css/bootstrap.css">
	</head>
	<body>
		<!-- Primeiro, será definido as configurações desejadas do local onde estará o conteúdo -->
		<div class="col-md-10 col-md-offset-1" id="conteudo">
			
			<!-- Agora será criado o painel -->
			<div class="panel panel-primary" style="margin-top: 20px;">
				<!-- Em seguida a cabeça do painel -->
				<div class="panel-heading">
					<h3 class="panel-title text-center">Consultas</h3>
				</div>
				<!-- O corpo do painel -->
				<div class="panel-body">
					<!-- definindo as configurações do form -->
					<form class="col-md-6" action="#" name="#" method="post">
						 <div class="form-group text-center">
							<span>Selecione uma especialidade:</span>
							 
							 <!-- Nessa etapa, será criado um elemento HTML (select) com id = especialidade. -->
							<select class="input-group form-control input-sm" id="especialidade">
								
								<?php 
									/*
										Dentro do bloco PHP, será chamado a função ConexãoPDO (localizada em conn.php), e atribuirá seus valores
										na variável $pdo.
										Na sequência, a variável $especialidade receberá os valores da variável $pdo que está preparando uma requisição ao banco
										(select) selecionando todas as especialidades médicas em seu pedido.
										Em seguida, a variável $especialidade executará o pedido, na sequência será criado um laço de repetição, definindo na variável
										$especialidades os valores retornados em $especialidade pelo fetch com os dados formatado em array (ASSOC).
										
									*/
									$pdo = ConexaoPDO();
									$especialidade = $pdo->prepare("select * from especialidade_medica;");
									$especialidade->execute();
									while($especialidades = $especialidade->fetch(PDO::FETCH_ASSOC)){
										
									/*
										Já no seguinte elemento HTML (option), será atribuido "especialidades" no atributo class, e o valor dentro da option será o
										id da especialidade (dados retornados do banco) e o nome da especialidade.
										Abaixo do elemento html, será reaberto o bloco PHP e fechará a chave do laço de repetição.
									*/	
								?>		
								<option class="especialidades"><?php echo $especialidades['id_espe'];?> - <?php echo $especialidades['especialidade'];?></option>
								<?php };?>
								<!-- Abaixo, fechamento do elemento select do HTML -->
							</select> 
						</div> <!-- Div Form-Group -->
					</form>
					<div class="col-md-6 text-center">
						<span>Selecione um tipo:</span>
						
						<!-- Abaixo, será criado outro elemento HTML (select) com id = doencas.-->
						<select class="input-group form-control input-sm" id="doencas">
							
						</select>
					</div>	
				</div>  <!-- Panel-Body -->
			</div> <!-- Panel -->
		</div> <!-- Div Conteúdo -->	
		<script src="js/jquery.min.js">// Em javascript, estaremos usando a biblioteca do JQUERY.</script>
		<script>

			//	Abaixo, temos a função ready, isso significa que após o carregamento do documento, será executado
			//	a função change no elemento #especialidade do html (# setará o id do elemento), nesse caso é um elemento select.
			
			$(document).ready(function(){
				$("#especialidade").change();
			//	console.log($("#especialidade").val());
			});
			/*
				No bloco seguinte, será executado a função change todas as vezes que for detectado alguma alteração
				no elemento #especialidade do HTML, e quando esse evento acontecer,
				será declarado na variável 'especialidade' o valor dos dois primeiro dígitos do elemento selecionado, (cortado pela função substring). 
			*/
							
			$("#especialidade").change( function(){ 
				var especialidade = $("#especialidade").val().substring(2,0);
				
				//	Na sequência do evento, será iniciado o ajax, que utilizará o metodo post para enviar 'algo', cujo algo transitará 
				//	através do JSON, para o destino 'getRegistros.php', esse algo (parâmetro) contem o valor armazenado na variável 'especialidade' (declarado a cima).
				//	Veja a sequência em getRegistros.php.
				
				$.ajax({
					type:"POST",
					dataType: "json",
					url:"getRegistros.php",
					data:{
						especialidade: especialidade
					},
					success: function(data){		
				
						//	Nesse bloco ( dentro da função success), será recebido o resultado da requisição enviada para getRegistros através do ajax.
						//	Abaixo, a função empty será executada no elemento #doencas, em seguida será iniciado outro laço de repetição (loop),
						//	que enviará para o elemento #doencas, o elemento option já formatado com os valores recebidos de getRegistros através do json.
						
						$("#doencas").empty();	
						$.each(data, function(key, value){		
							$("#doencas").append("<option>"+value.tipo_doencas+"</option>");
						});		
					}						
				});
			 });
		</script>
	</body>
</html>
