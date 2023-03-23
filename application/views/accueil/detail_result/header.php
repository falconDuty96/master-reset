<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="device=device-width,initial-scale=1.0">

	<title>Igoguide - Details</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css">

	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
	<!-- CSS Custom -->

	<!-- <link rel="stylesheet" href="<?php echo base_url(); ?>publics/css/index.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>publics/css/responsive.css">

    <link rel="stylesheet" href="<?= base_url(); ?>publics/css/navbar.css"> -->

    <link rel="stylesheet" href="<?= base_url(); ?>publics/css/detail_result/header.css">
    <link rel="stylesheet" href="<?= base_url(); ?>publics/css/detail_result/navbar.css">
    <link rel="stylesheet" href="<?= base_url(); ?>publics/css/detail_result/banner.css">
    <link rel="stylesheet" href="<?= base_url(); ?>publics/css/detail_result/details.css">

</head>

<body>

<div class="__navbar">
	<div class="__logo">	
		<img class="__image" src="<?= base_url() ?>publics/image/logo-pour-fond-blanc.png" alt="logo Igoguide">
		<span class='__slogan'>Vos envies coïncident !</span>
	</div>

	<div class="__nav">

		<a href="<?= base_url() ?>" class="__retour">
			Accueil
		</a>

		<a type="button" class="__flag_dropdown dropdown-toggle" data-toggle="dropdown">
			<img class="__image" src="<?php echo base_url() ?>publics/icone/fr-flag.png" alt="">
		</a>

		<div class="dropdown-menu __flag_menu">
			<a class="dropdown-item __icon_flag_menu" href="#"> 
				<img src="<?php echo base_url() ?>publics/icone/fr-flag.png" class="__dropdown_icon">
				<span class="ml-2">Français</span>
			</a>
			<a class="dropdown-item __icon_flag_menu" href="#"> 
				<img src="<?php echo base_url() ?>publics/icone/eng-flag.png" class="__dropdown_icon">
				<span class="ml-2">Anglais</span>
			</a>
		</div>
	</div>
	
</div>