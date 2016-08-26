<?php
	//	Função ConexaoPDO, cujo objetivo é configurar a conexão específica com o banco de dados.
	function ConexaoPDO(){
		$pdo = new PDO ('mysql:unix_socket=/opt/lampp/var/mysql/mysql.sock;charset=UTF8;dbname=medicina','root', '');	
		$pdo -> exec("SET CHARACTER SET utf8");
		$pdo->setattribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
		return $pdo;
	}
?>