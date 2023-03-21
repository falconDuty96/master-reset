<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IGOGUIDE | PRO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin.css" id="style">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin_dark.css" id="style">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/style.css" id="style">
</head>

<body class="">
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
                    <span class="profil-menu ms-3" style="background-image: url('assets/image/logo-pour-fond-blanc.png');">

                    </span>
                    <span class="ms-1 dropdown-toggle dropdown-custom" data-bs-toggle="dropdown"> <?= $_SESSION['users_nom']; ?></span>
                    <ul class="dropdown-menu">
                        <li class="text-muted">
                            <h5 class="dropdown-header text-center bolder"><?= $_SESSION['users_nom']; ?></h5>
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
                        <a href="<?php echo base_url() ?>pro/profil" class="sidebar-link active">
                            <span class="icon"><i class="fa-solid fa-grip-vertical"></i></span>
                            <span class="ms-2">Profil</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/faq" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-phone"></i></span>
                            <span class="ms-2">F.A.Q</span>
                        </a>
                        <a href="<?php echo base_url() ?>pro/cgv" class="sidebar-link">
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
                <h1 class="h3">Modifier profil</h1>
                <?php
                echo form_open_multipart("Pro/modifProfil/{$profil[0]->users_id}");
                ?>
                <div class="container mt-4">
                    <div class="form-conteneur" style="width: 500px;">
                        <div class="row mb-2">
                            <div class="col-md-2">Photo:</div>
                            <div class="pdp-container" style="background-image: url('<?= base_url()?>publics/<?= $profil[0]->users_photo ; ?>');">
                                <div class="hover-clickable" id="hover-clicked">
                                    <p class="text-white text-center mt-3">Modifier</p>
                                </div>
                            </div>
                            <input type="file" class="d-none" name="users_photo" id="clickable">
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">Nom:</div>
                            <div class="col-md-6"><input type="text" name="users_nom" class="form-control" value="<?= $profil[0]->users_nom; ?>"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">Prénom:</div>
                            <div class="col-md-6"><input type="text" name="users_prenoms" class="form-control" value="<?= $profil[0]->users_prenoms; ?>"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">E-mail:</div>
                            <div class="col-md-6"><input type="text" name="users_email" class="form-control" value="<?= $profil[0]->users_email; ?>"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2">Télephone:</div>
                            <div class="col-md-6"><input type="text" name="users_telephone" class="form-control" value="<?= $profil[0]->users_telephone; ?>"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-2"></div>
                            <div class="col-md-10">
                                <input type="submit" class="btn btn-primary" value="Modifier">
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <hr>
                <h1 class="h3">Modifier Mot de passe</h1>
                <div class="container mt-4">
                    <div class="form-conteneur" style="width: 500px;">
                        <?php echo form_open("Pro/modifPassword/{$profil[0]->users_id}") ; ?>
                        <div class="row mb-2">
                            <div class="col-md-5">Ancien mot de passe:</div>
                            <div class="col-md-7"><input type="password" name="old_pass" class="form-control"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-5">Nouveau mot de passe:</div>
                            <div class="col-md-7"><input type="password" name="new_pass" class="form-control"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-5">Confirmer mot de passe:</div>
                            <div class="col-md-7"><input type="password" name="new_pass_confirm" class="form-control"></div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-5"></div>
                            <div class="col-md-7">
                                <input type="submit" class="btn btn-primary" value="Modifier">
                            </div>
                        </div>
                        </form>
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
</body>

</html>