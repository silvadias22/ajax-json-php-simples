drop database medicina;
create database medicina;
use medicina;

	CREATE TABLE especialidade_medica(
		id_espe INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
		especialidade longtext NOT NULL
	);
	
	CREATE TABLE tabela_tipos_doencas(
 		id_tipo_doencas INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 		id_esp int(4) NOT NULL,
		foreign key(id_esp) references especialidade_medica(id_espe),
  		tipo_doencas longtext NOT NULL
	);

	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(1, 'Anatomia Patologica'); 
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(2, 'Anestesiologia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(4, 'Angiologia e Cirurgia Vascular');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(5, 'Cardiologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(6, 'Cardiologia Pediatrica');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(7, 'Cirurgia Cardiotoracica');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(8, 'Cirurgia Geral');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(9, 'Cirurgia Maxilo-Facial');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(10, 'Cirurgia Pediatrica');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(11, 'Cirurgia Plastica Reconstrutiva e Estetica');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(12, 'Dermato-Venereologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(13, 'Doencas Infecciosas'); 
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(14, 'Endocrinologia e Nutricao'); 
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(15, 'Estomatologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(16, 'Gastrenterologia');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(17, 'Genetica Medica');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(18, 'Ginecologia/Obstetricia');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(19, 'Imunoalergologia');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(20, 'Imunohemoterapia');
	--INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(21, 'Farmacologia Clinica');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(22, 'Hematologia Clinica'); 
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(23, 'Medicina Desportiva');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(24, 'Medicina do Trabalho');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(25, 'Medicina Fisica e de Reabilitacao');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(26, 'Medicina Geral e Familiar');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(27, 'Medicina Interna');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(28, 'Medicina Legal');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(29, 'Medicina Nuclear');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(30, 'Medicina Tropical');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(31, 'Nefrologia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(32, 'Neurocirurgia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(33, 'Neurologia'); 
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(34, 'Neurorradiologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(35, 'Oftalmologia'); 
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(36, 'Oncologia Medica'); 
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(37, 'Ortopedia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(38, 'Otorrinolaringologia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(39, 'Patologia Clinica');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(40, 'Pediatria');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(41, 'Pneumologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(42, 'Psiquiatria'); 
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(43, 'Psiquiatria da Infancia e da Adolescencia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(44, 'Radiologia');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(45, 'Radioncologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(46, 'Reumatologia');
	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(47, 'Saude Publica');
--	INSERT INTO especialidade_medica(id_espe, especialidade) VALUES(48, 'Urologia');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(13, 'Doencas infecciosas');	
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(13, 'Doencas parasitarias');		
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'Malformacões congenitas');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'deformidades');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'anomalias cromossômicas');	
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(36, 'Neoplasmas (tumores)');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(22, 'Doencas do sangue');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(22, 'Órgaos hematopoieticos');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(22, 'Transtornos imunitários');	
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(14, 'Doencas endocrinas');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(14, 'Doencas nutricionais');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(14, 'Doencas metabólicas');	
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(42, 'Transtornos mentais');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(42, 'Transtornos comportamentais');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(33, 'Doencas do sistema nervoso');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(35, 'Doencas dos olhos e anexos');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(13, 'Doencas do ouvido');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(13, 'Doencas da apofise mastoide');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(6, 'Doencas do aparelho circulatorio');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(41, 'Doencas do aparelho respiratorio');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(16, 'Doencas do aparelho digestivo');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(12, 'Doencas da pele');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(12, 'Doencas do tecido subcutaneo');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(46, 'Doencas do sistema osteomuscular');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(46, 'Doencas do tecido conjuntivo');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(18, 'Doencas do aparelho geniturinario');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(18, 'Gravidez');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(18, 'Parto');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(18, 'Puerperio');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(47, 'Afeccões originadas no periodo perinatal');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'Lesões');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'Envenenamento ');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(1, 'Outras consequencias de causas externas');	
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(47, 'Causas externas de mobilidade');
	INSERT INTO tabela_tipos_doencas(id_esp , tipo_doencas) VALUES(47, 'Causas externas de mortalidade');
