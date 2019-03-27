<?php 
	//error_reporting(E_ALL ^ E_NOTICE);
	session_start();

	require_once 'controller/UsuarioController.php';
	$usuario = new UsuarioController();

	if(!empty($_SESSION["id"])||$_GET["funcion"] == "login"){
		require_once 'controller/ViewController.php';
		require_once 'view/header.php';

		//controlador de la vista

		$page = $_GET["page"];
		$funcion = $_GET["funcion"];
		$step = $_GET["step"];

		new ViewController($page,$funcion,$step);

		$result3 = $usuario->buscarUsuario($row[3])->fetch(PDO::FETCH_BOTH);
										      		echo $result3[2];

		require_once 'view/footer.php';
	}else{
		header('Location: login.php');
	}

 ?>