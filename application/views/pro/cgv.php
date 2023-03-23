<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>IGOGUIDE | PRO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin_dark.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/style.css">
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
		.actived,
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

		.actived:after {
			content: "\2796";
			/* Unicode character for "minus" sign (-) */
		}
    </style>
</head>

<body>

    <div class="backdrop d-none" id="backdrop"></div>
    <div class="header">
        <div class="wrapper">
            <div class="_navbar">
                <div class="_navbar-logo">
                    <span role="button" class="menu-hamborger" onclick="toggleSidebar()">
                        <i class="fa-solid fa-bars"></i>
                    </span>
                    <img src="<?= base_url() ?>publics/pro/image/logo-pour-fond-blanc.png" alt="logo" class="logo-img">
                </div>
                <div class="d-flex justify-content-center align-items-center">
                    <span class="mode-menu" role="button" onclick="toggleMode(this)" data-light="true">
                        <i class="fa-solid fa-moon"></i>
                    </span>
                    <span class="msg-menu ms-3" role="button">
                        <i class="fa-solid fa-envelope"></i>
                        <span class="_badge" id="unread-message-count"></span>

                    </span>
                    <span class="profil-menu ms-3" style="background-image: url('../publics/<?php echo $_SESSION['logo'] ?? '' ;?>');">

                    </span>
                    <span class="ms-1 dropdown-toggle dropdown-custom" data-bs-toggle="dropdown"> <?= $_SESSION['etablissement']; ?></span>
                    <ul class="dropdown-menu">
                        <li class="text-muted">
                            <h5 class="dropdown-header text-center bolder"><?= $_SESSION['etablissement']; ?></h5>
                        </li>
                        <li class="text-muted"><a class="dropdown-item" href="<?= base_url() ?>Pro/profil"> <i class="fa-solid fa-user"></i> Profil</a></li>
                        <li class="text-muted"><a class="dropdown-item" href="#"> <i class="fa-solid fa-circle-question"></i> Aide</a></li>
                        <li class="text-muted"><a class="dropdown-item" href="<?php echo base_url(); ?>Pro/deconnect"> <i class="fa-solid fa-cog"></i> Déconnexion</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="wrapper">
            <div class="sidebar">
                <div class="pt-2">
                    <span class="sidebar-title">
                        <span>Fiches</span>

                        <span class="line"></span>
                    </span>
                    <div class="pt-2">
                        <a href="<?php echo base_url() ?>pro/" class="sidebar-link ">
                            <span class="icon"><i class="fa-solid fa-file"></i></span>
                            <span class="ms-2">Fiches</span>
                        </a>
                        <!-- <a href="a#" class="sidebar-link">
                                <span class="icon"><i class="fa-solid fa-rectangle-list"></i></span>
                                <span class="ms-2">Liste</span>
                            </a> -->
                    </div>
                </div>

                <div class="mt-4">
                    <span class="sidebar-title">
                        <span>Abonnements</span>
                        <span class="line"></span>
                    </span>
                    <div class="pt-2">
                        <a href="<?php echo base_url() ?>pro/abonnement" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-grip-vertical"></i></span>
                            <span class="ms-2">Nouvel abonnement</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/transactions" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-receipt"></i></span>
                            <span class="ms-2">Transactions</span>
                        </a>
                    </div>
                </div>

                <div class="mt-4">
                    <span class="sidebar-title">
                        <span>Messages</span>
                        <span class="line"></span>
                    </span>
                    <div class="pt-2">
                        <a href="<?php echo base_url() ?>pro/mails" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-scale-balanced"></i></span>
                            <span class="ms-2">Mails</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/notifications" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-handshake-angle"></i></span>
                            <span class="ms-2">Notifications</span>
                        </a>
                    </div>
                </div>

                <div class="mt-4">
                    <span class="sidebar-title">
                        <span>Pages</span>
                        <span class="line"></span>
                    </span>
                    <div class="pt-2">
                        <a href="<?php echo base_url() ?>pro/profil" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-grip-vertical"></i></span>
                            <span class="ms-2">Profil</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/etablissement" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-building"></i></span>
                            <span class="ms-2">Etablissement</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/faq" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-phone"></i></span>
                            <span class="ms-2">F.A.Q</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/cgv" class="sidebar-link active">
                            <span class="icon"><i class="fa-solid fa-receipt"></i></span>
                            <span class="ms-2">C.G.V</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/cgu" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-receipt"></i></span>
                            <span class="ms-2">C.G.U</span>
                        </a>
                    </div>
                </div>

            </div>
            <main class="content">
                <!-- FAQ ! -->
                <div class="py-5" style="overflow: hidden; background-color: #fee085; background-color: white; min-height: 700px;">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h2 class="text-center mb-4 entete_row entete_row_primary">C.G.V</h2>
                                <?php if (isset($cgv)) : ?>
                                    <?php for ($i = 0; $i < count($cgv); $i++) : ?>
                                        <button class="accordion"><?= $cgv[$i]->cgv_entete; ?></button>
                                        <div class="panel">
                                            <?= $cgv[$i]->cgv_contenu; ?>
                                        </div>
                                    <?php endfor; ?>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <div class="messenger shadow rounded d-none">
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.2/jquery.min.js" integrity="sha512-tWHlutFnuG0C6nQRlpvrEhE4QpkG1nn2MOUMWmUeRePl4e3Aki0VB6W1v3oLjFtd0hVOtRQ9PHpSfN6u6/QXkQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js" integrity="sha512-rpLlll167T5LJHwp0waJCh3ZRf7pO6IT1+LZOhAyP6phAirwchClbTZV3iqL3BMrVxIYRbzGTpli4rfxsCK6Vw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="<?= base_url() ?>publics/pro/js/helpers.js"></script>
    <script src="<?= base_url() ?>publics/pro/js/interface.js"></script>
    <script src="<?= base_url() ?>publics/pro/js/main.js"></script>
    <script>
        // accordion
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                this.classList.toggle("actived");
                var panel = this.nextElementSibling;
                if (panel.style.maxHeight) {
                    panel.style.maxHeight = null;
                } else {
                    panel.style.maxHeight = panel.scrollHeight + "px";
                }
            });
        }
    </script>
</body>

</html>