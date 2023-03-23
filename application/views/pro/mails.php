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
                        <a href="<?php echo base_url() ?>pro/mails" class="sidebar-link active">
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
                <h1 class="h3">Liste d'email</h1>
                <div class="form-container shadow shadow-sm">
                    <h6 class="form-title d-flex justify-content-between">
                        <span>Liste d'emails</span>
                        <span>
                            <!-- <button class="_btn _btn-primary" onclick="createEmails()">
                <i class="fa-solid fa-plus"></i>
                <span>Ajouter</span>
            </button> -->
                            <button type="button" class="d-none" data-bs-toggle="modal" data-bs-target="#modal-emails" id="open-modal-emails"></button>
                        </span>
                    </h6>
                    <div class="form-table">

                        <div class="table-responsive table-sticky">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Envoyeur</th>
                                        <th>Objet</th>
                                        <th>Date</th>
                                        <th>Etat</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>ketaka@gmail.com</td>
                                        <td class="text-limiter" style="max-width: 150px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae quidem voluptate asperiores nihil pariatur dolore ratione soluta esse doloribus, veritatis at expedita eveniet inventore numquam reprehenderit neque suscipit ex placeat?</td>

                                        <td>21/02/2023</td>
                                        <td>Non lu</td>
                                        <td>
                                            <span role="button" onclick="createEmails()" class="btn-tooltip text-success" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Voir">
                                                <i class="fa-regular fa-eye"></i>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="modal-emails" tabindex="-1" aria-labelledby="modal-emails" aria-hidden="true" data-bs-backdrop="static">
                    <div class="modal-dialog" id="form-header">

                        <form class="modal-content">

                            <div class="modal-header">
                                <h1 class="modal-title fs-5">Contenu</h1>
                                <button type="button" id="close-modal-emails" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <div class="header-content">
                                    <p class="bolder">Envoyeur: </p>
                                    <p>ketaka@gmail.com</p>
                                </div>
                                <div class="body-content">
                                    <p class="bolder">Objet:</p>
                                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium, nobis id. Tempore, vitae sint veritatis cupiditate atque similique voluptates at repellat nulla, id facere aliquid maiores doloribus! Dolore, consectetur praesentium. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores soluta aut, perspiciatis tenetur quae culpa et dignissimos quidem fuga corporis, quia ea repellat beatae impedit rerum hic fugiat earum eveniet.</p>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="_btn _btn-success w-50">Fermer</button>
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