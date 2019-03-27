<?php 
	error_reporting(E_ALL ^ E_NOTICE);
	session_start();
	if(!empty($_SESSION["id"])||$_GET["funcion"] == "login"){
		require_once 'controller/ViewController.php';
		require_once 'view/header.php';

		//controlador de la vista

		$page = $_GET["page"];
		$funcion = $_GET["funcion"];
		$step = $_GET["step"];

		new ViewController($page,$funcion,$step);

		require_once 'view/footer.php';
	}else{
		header('Location: login.php');
	}

 ?>