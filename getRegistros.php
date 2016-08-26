<?php

	// Nessa parte do documento, será incluido as configurações de conexão com banco de dados, contidas em conn.php.
	include ('conn.php');

	// Será declarado na variável $pdo, os valores retornados da função chamada 'ConexãoPDO()';
	$pdo = ConexaoPDO();

	// Na variável $esp, será atribuido o valor 'especialidade' recebido do ajax da index através do metodo POST. 
	$esp = $_POST['especialidade'];

	/*
		Nessa etapa, a variável $especialidades recebe os valores de $pdo que prepara um select requerindo os valores
		armazenados em "tipo_doencas" da tabela "tabela_tipos_doencas" especificando o id da especialidade, 
		utilizando a variável no banco ":esp" que na linha seguinte receberá (pelo bind) os valores contidos na variável php $esp.
		Em seguida $especialidade executara o preparo, e será criado um laço de repetição, onde a variável $tipoDoencas receberá
		os valores da variável $especialidades retornados de forma multidimensional (pelo fetchAll), em seguida será retornado
		para o local de onde foi feito a requisição (ajax), através da metodologia de transitação de informações do json.
	*/
	$especialidades = $pdo->prepare("select tipo_doencas from tabela_tipos_doencas where id_esp=:esp;");
	$especialidades->bindValue(":esp", $esp); 
	$especialidades->execute();

	while($tipoDoencas = $especialidades->fetchAll(PDO::FETCH_CLASS)){

		echo json_encode($tipoDoencas);
	}
?>
