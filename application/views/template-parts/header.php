<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="device=device-width,initial-scale=1.0">


	<title>Igoguide</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css">

	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
	<!-- CSS Custom -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>publics/css/index.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>publics/css/responsive.css">
	<style>
		.accordion {
			background-color: #eee;
			color: #444;
			cursor: pointer;
			padding: 18px;
			width: 100%;
			text-align: left;
			border: none;
			outline: none;
			transition: 0.4s;
		}

		/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
		.active,
		.accordion:hover {
			background-color: #ccc;
		}

		/* Style the accordion panel. Note: hidden by default */
		.panel {
			padding: 0 18px;
			background-color: white;
			max-height: 0;
			overflow: hidden;
			transition: max-height 0.2s ease-out;
		}

		.accordion:after {
			content: '\02795';
			/* Unicode character for "plus" sign (+) */
			font-size: 13px;
			color: #777;
			float: right;
			margin-left: 5px;
		}

		.active:after {
			content: "\2796";
			/* Unicode character for "minus" sign (-) */
		}
	</style>

</head>

<body>

	<!-- Entete -->
	<div class="" id="entete_logo">
		<div class="container">
			<!-- Conteneur centré -->
			<div class="row">
				<!-- Place logo -->
				<div class="col-xl-6 col-lg-6 col-md-6 col-6" id="entete_logo_gauche">
					<img src="<?php echo base_url() ?>publics/image/logo.png" alt="logo Igoguide">
					<span class="ml-2" id="slogan">Vos envies coïncident !</span>
				</div>

				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6" id="entete_logo_droite">
					<?php if (isset($_SESSION['connected'])) : ?>
						<?php if ($_SESSION['connected'] && $_SESSION["particulier"]) : ?>
							<a href="<?= base_url(); ?>Home/favoris" class="btn btn-dark btn-log-container">
								<i class="fa-regular fa-heart icon-log"></i>
								<span class="btn-log">Favoris</span>
							</a>
							
							<a href="<?= base_url(); ?>Home/profil" class="btn btn-dark btn-log-container">
								<i class="fa-solid fa-user icon-log"></i>
								<span class="btn-log">Profil</span>
							</a>
							<a class="btn btn-dark btn-log-container" href="<?php echo base_url() ?>Users/deconnectUsers">
							<span class="btn-log">Déconnexion</span></a>
							<!-- <a class="dropdown-item" href="<?php echo base_url() ?>Users/deconnectUsers">Déconnexion</a> -->
							<!-- <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								
							</div> -->
						<?php else : ?>
							<a href="<?php echo base_url(); ?>Home/loginUsers" class="btn btn-dark btn-log-container"><i class="fa-solid fa-user icon-log"></i><span class="btn-log">Se connecter</span></a>
							<a href="<?php echo base_url(); ?>Home/loginProfessionnel" class="btn btn-dark btn-log-container"><i class="fa-solid fa-user-tie icon-log"></i><span class="btn-log">Espace Pro</span></a>
						<?php endif; ?>
					<?php else : ?>
						<a href="<?php echo base_url(); ?>Home/loginUsers" class="btn btn-dark btn-log-container"><i class="fa-solid fa-user icon-log"></i><span class="btn-log">Se connecter</span></a>
						<a href="<?php echo base_url(); ?>Home/loginProfessionnel" class="btn btn-dark btn-log-container"><i class="fa-solid fa-user-tie icon-log"></i><span class="btn-log">Espace Pro</span></a>
					<?php endif; ?>

					<a class="dropdown">
						<a type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" id="langue">
							<img src="<?php echo base_url() ?>publics/icone/fr-flag.png" id="flag-show" alt="">
						</a>

					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item icon-flag-menu" href="#"> <img src="<?php echo base_url() ?>publics/icone/fr-flag.png" class="dropdown-icon"><span class="ml-2">Français</span></a>
						<a class="dropdown-item icon-flag-menu" href="#"> <img src="<?php echo base_url() ?>publics/icone/eng-flag.png" class="dropdown-icon"><span class="ml-2">Anglais</span></a>
					</div>

				</div>

				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
					<i class="fa-solid fa-bars float-right" id="bars" state="off"></i>
				</div>

				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div id="accordion" class="container d-none">
						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/ic_a.png" alt="" class="nav_icone_bars">
									<button class="btn btn-link text-white" data-toggle="collapse" data-target="#collapseNone" aria-expanded="false" aria-controls="collapseNone">
										Accueil
									</button>
								</h5>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/herbergement.png" alt="" class="nav_icone_bars">
									<button class="btn btn-link text-white" data-toggle="modal" data-target="#myModal1" aria-expanded="false" aria-controls="collapseOne">
										Hébergement
									</button>
								</h5>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingTwo">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/Ou_Boire.png" alt="" class="nav_icone_bars" id="icone_ou_boire">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal2" aria-expanded="false" aria-controls="collapseTwo">
										Où boire
									</button>
								</h5>
							</div>
							<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body">

								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingThree">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/Ou_Manger.png" alt="" class="nav_icone_bars" id="icone_ou_manger">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal3" aria-expanded="false" aria-controls="collapseThree">
										Où manger
									</button>
								</h5>
							</div>
							<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
								<div class="card-body">
									<ul>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_whiskies.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Lounges / Whiskies / Cocktails</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_rooftop.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à rooftop</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_vin.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à vins</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_pubs _ tapas.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Pubs / Bars à tapas</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_billard.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à thèmes / Jeux / Billards</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/concert_bar.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Concerts bars</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_chat.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à chats</a>
											<!-- </div> -->
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingFour">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/Balades.png" alt="" class="nav_icone_bars" id="icone_balade">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal4" aria-expanded="false" aria-controls="collapseFour">
										Balades
									</button>
								</h5>
							</div>

							<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
								<div class="card-body">
									<ul>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_whiskies.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Lounges / Whiskies / Cocktails</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_rooftop.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à rooftop</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_vin.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à vins</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_pubs _ tapas.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Pubs / Bars à tapas</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_billard.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à thèmes / Jeux / Billards</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/concert_bar.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Concerts bars</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_chat.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à chats</a>
											<!-- </div> -->
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingFive">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/Activites.png" alt="" class="nav_icone_bars" id="icone_activite">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal5" aria-expanded="false" aria-controls="collapseFive">

										Activités
									</button>
								</h5>
							</div>

							<div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
								<div class="card-body">
									<ul>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_whiskies.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Lounges / Whiskies / Cocktails</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_rooftop.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à rooftop</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_vin.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à vins</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_pubs _ tapas.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Pubs / Bars à tapas</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_billard.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à thèmes / Jeux / Billards</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/concert_bar.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Concerts bars</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_chat.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à chats</a>
											<!-- </div> -->
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingSix">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/Services.png" alt="" class="nav_icone_bars" id="icone_service">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal6" aria-expanded="false" aria-controls="collapseSix">
										Services
									</button>
								</h5>
							</div>
							<div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
								<div class="card-body">
									<ul>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_whiskies.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Lounges / Whiskies / Cocktails</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_rooftop.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à rooftop</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_vin.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à vins</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_pubs _ tapas.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Pubs / Bars à tapas</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_billard.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à thèmes / Jeux / Billards</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/concert_bar.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Concerts bars</a>
											<!-- </div> -->
										</li>
										<li class="mb-3">
											<img class="" src="<?php echo base_url() ?>publics/image/bar_chat.png" style="height:45px" alt="">
											<!-- <div class="pl-1"> -->
											<a href="" class="text-white ml-2" style="font-size: 13px;">Bars à chats</a>
											<!-- </div> -->
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingSix">
								<h5 class="mb-0">
									<i class='fa-solid fa-user text-white'></i>
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal6Resp" aria-expanded="false" aria-controls="collapseSix">

										Se connecter
									</button>
								</h5>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingSix">
								<h5 class="mb-0">
									<i class="fa-solid fa-user-tie text-white"></i>
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal6Resp" aria-expanded="false" aria-controls="collapseSix">
										Espace pro
									</button>
								</h5>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingSix">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/fr-flag.png" class="nav_icone_bars">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal6Resp" aria-expanded="false" aria-controls="collapseSix">
										Français
									</button>
								</h5>
							</div>
						</div>

						<div class="card">
							<div class="card-header" id="headingSix">
								<h5 class="mb-0">
									<img src="<?php echo base_url() ?>publics/icone/eng-flag.png" class="nav_icone_bars">
									<button class="btn btn-link text-white collapsed" data-toggle="modal" data-target="#myModal6Resp" aria-expanded="false" aria-controls="collapseSix">
										Anglais
									</button>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Navigation -->
	<div class="" id="navigation">
		<!-- Navbar -->
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
					<div class="__sous_nav_block">

						<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
							<!-- Links -->
							<ul class="navbar-nav">
								<li class="nav-item icon-menu" id="menu-1">
									<img src="<?php echo base_url() ?>publics/icone/ic_a.png" alt="" class="nav_icone">
									<a class="nav-link" href="<?= base_url() ;?>Home/">Accueil</a>
								</li>

								<li class="nav-item icon-menu" data-shower="1" id="menu-2">
									<img src="<?php echo base_url() ?>publics/icone/herbergement.png" alt="" class="nav_icone">
									<a class="nav-link " href="#">Hébergements</a>
									<!-- Sous menu -->
								</li>

								<li class="nav-item icon-menu" data-shower="2" id="menu-3">
									<img src="<?php echo base_url() ?>publics/icone/Ou_Boire.png" alt="" class="nav_icone" id="icone_ou_boire">
									<a class="nav-link" href="#">Où boire</a>
								</li>

								<li class="nav-item icon-menu" data-shower="3" id="menu-4">
									<img src="<?php echo base_url() ?>publics/icone/Ou_Manger.png" alt="" class="nav_icone" id="icone_ou_manger">
									<a class="nav-link" href="#">Où manger</a>
								</li>

								<li class="nav-item icon-menu" data-shower="4" id="menu-5">
									<img src="<?php echo base_url() ?>publics/icone/Balades.png" alt="" class="nav_icone" id="icone_balade">
									<a class="nav-link" href="#">Balades</a>
								</li>

								<li class="nav-item icon-menu" data-shower="5" id="menu-6">
									<img src="<?php echo base_url() ?>publics/icone/Activites.png" alt="" class="nav_icone" id="icone_activite">
									<a class="nav-link" href="#">Activités</a>
								</li>

								<li class="nav-item icon-menu" data-shower="6" id="menu-7">
									<img src="<?php echo base_url() ?>publics/icone/Services.png" alt="" class="nav_icone" id="icone_service">
									<a class="nav-link" href="#">Services</a>
								</li>
							</ul>
						</nav>

						<div class="container boite-menu py-3 px-3" id="boite-1">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">
											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20dans%20les%20arbres">
														<img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icones cabanes dans les arbres igoguide.png" alt="">
													</a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20dans%20les%20arbres">Cabanes dans les arbres</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sous%20terre">
														<img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icones cabanes sous terre igoguide.png" alt="">
													</a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sous%20terre">Cabanes sous terre</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sur%20terre"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone cabane sur terre igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sur%20terre">Cabanes sur terre</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sur%20l%27eau"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone cabane sur l_eau igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Cabanes%20sur%20l%27eau">Cabanes sur l'eau</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bulles"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone bulle igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Bulles">Bulles</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Tipis - tentes - yourtes"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone tipis_tente_yourte igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Tipis - tentes - yourtes">Tipis / Tentes / Yourtes</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Habitats%20roulants"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone habitat roulant igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Habitats%20roulants">Habitats roulants</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Monuments%20historiques"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone monument historique igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Monuments%20historiques">Monuments historiques</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bateaux"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone bateau igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Bateaux">Bateaux</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/H%C3%A9bergements%20de%20charme"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone hébergements de charme igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/H%C3%A9bergements%20de%20charme">Hébergements de charme</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/H%C3%B4tels%20atypiques"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Hébergements/icone hotels atypiques igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/H%C3%B4tels%20atypiques">Hôtels atypiques</a>
													</p>
												</div>
											</li>

										</ul>
									</div>
								</section>
							</div>
						</div>

						<div class="container boite-menu pt-3 pl-4" id="boite-2">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">

											<li class="splide__slide">
												<div class="content-submenu content-submenu-7">
													<a href="<?= base_url()?>Home/sousnav_result/sc/<?= urlencode('Bar lounges - Whiskies - Coktails') ;?>"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar à whiskies igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/<?= urlencode('Bar lounges - Whiskies - Coktails') ;?>">Lounges / Whiskies / Coktails</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7  mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bar%20lounges%20-%20Whiskies%20-%20Coktails"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar rooftop igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Bar%20lounges%20-%20Whiskies%20-%20Coktails">Bars à rooftop</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20vins"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar à vin igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20vins">Bars à vins</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Pubs%20-%20Bars%20%C3%A0%20tapas"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar pubs _ tapas igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Pubs%20-%20Bars%20%C3%A0%20tapas">Pubs / Bars à tapas</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20th%C3%A8mes%20-%20Jeux%20-%20Billards"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar billard.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20th%C3%A8mes%20-%20Jeux%20-%20Billards">Bars à thèmes / Jeux / Billards</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Concerts%20bars"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone concert bar igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Concerts%20bars">Concerts bars</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20chats"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou boire/icone bar à chat igoguidee.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Bars%20%C3%A0%20chats">Bars à chats</a>
													</p>
												</div>
											</li>
										</ul>
									</div>
								</section>
							</div>
						</div>

						<div class="container boite-menu pt-3 pl-4" id="boite-3">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">
											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Restaurants%20originaux"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/icone_restaurants_originaux.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Restaurants%20originaux">Restaurants originaux</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Restaurants%20avec%20animations"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/Restaurants avec animation.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Restaurants%20avec%20animations">Restaurants avec animations</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Brasserie%20-%20Bistrot%20-%20Auberges"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/brasserie bistrot.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Brasserie%20-%20Bistrot%20-%20Auberges">Brasserie - Bistrot - Auberges</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cuisines%20traditionnelles"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/icone cuisine traditionnelle igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Cuisines%20traditionnelles">Cuisines traditionnelles</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Cuisines%20du%20monde"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/icone cuisine du monde igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Cuisines%20du%20monde">Cuisines du monde</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Type%20fast-food%20-%20Tapas"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Ou manger/icone type fast food igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Type%20fast-food%20-%20Tapas">Types fast food / Tapas</a>
													</p>
												</div>
											</li>
										</ul>
									</div>
								</section>
							</div>
						</div>

						<div class="container boite-menu pt-3 pl-4" id="boite-4">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Au%20fil%20de%20l%27eau"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Balades/icone au fil de l_eau igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Au%20fil%20de%20l%27eau">Au fil de l'eau</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Randonn%C3%A9es%20nature"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Balades/icones randonnées nature igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Randonn%C3%A9es%20nature">Randonnées nature</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Sites%20historiques"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Balades/icone monuments hsitoriques igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Sites%20historiques">Sites historiques</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Les%20perles%20sauvages"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Balades/icone les perles sauvages igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Les%20perles%20sauvages">Les perles sauvages</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Les%20jardins%20de%20l%27imaginaire"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Balades/Icone jardins de l_imaginaire igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Les%20jardins%20de%20l%27imaginaire">Les jardins de l'imaginaire</a>
													</p>
												</div>
											</li>

										</ul>
									</div>
								</section>
							</div>
						</div>

						<div class="container boite-menu pt-3 pl-4" id="boite-5">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Ateliers%20et%20stages"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icone ateliers et stage igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Ateliers%20et%20stages">Ateliers et stages</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20sportives"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icone activités sportives igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20sportives">Activités sportives</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20ludiques"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icones activités ludiques igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20ludiques">Activités ludiques</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20gustative"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icones activités gustatives igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20gustative">Activités gustative</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20%C3%A9ducatives"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icone activité educative igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20%C3%A9ducatives">Activités éducatives</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20bien-%C3%AAtre"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icone activités bien etre igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Activit%C3%A9s%20bien-%C3%AAtre">Activités bien-être</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Shoppings%20artisans%20et%20cr%C3%A9ateurs"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Activités/icone shopping artisans créateurs igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Shoppings%20artisans%20et%20cr%C3%A9ateurs">Shoppings artisans et créateurs</a>
													</p>
												</div>
											</li>

										</ul>
									</div>
								</section>
							</div>
						</div>

						<div class="container boite-menu pt-3 pl-4" id="boite-6">
							<div class="conteneur-submenu">
								<section class="splide" aria-label="Splide Basic HTML Example">
									<div class="splide__track">
										<ul class="splide__list" id="splide__list">

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Organisateurs"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone organisateurs igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Organisateurs">Organisateurs</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Photographes"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone photographe igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold " href="<?= base_url()?>Home/sousnav_result/sc/Photographes">Photographes etc.</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Traiteurs"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone traiteur igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Traiteurs">Traiteurs</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Fleuristes"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone fleuriste igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Fleuristes">Fleuristes</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Locations%20de%20v%C3%A9hicules"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone location de voiture igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Locations%20de%20v%C3%A9hicules">Locations de véhicules</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Locations%20de%20v%C3%A9los"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone location de velo igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Locations%20de%20v%C3%A9los">Locations de vélos</a>
													</p>
												</div>
											</li>

											<li class="splide__slide">
												<div class="content-submenu mr-2 content-submenu-7 mb-4">
													<a href="<?= base_url()?>Home/sousnav_result/sc/Divers"><img class="img-submenu" src="<?php echo base_url() ?>publics/image/Services/icone divers pressing igoguide.png" alt=""></a>
													<p class="text-center">
														<a class="toBold" href="<?= base_url()?>Home/sousnav_result/sc/Divers">Divers</a>
													</p>
												</div>
											</li>

										</ul>
									</div>
								</section>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>