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
                    <span class="profil-menu ms-3" style="background-image: url('assets/image/logo-pour-fond-blanc.png');">

                    </span>
                    <span class="ms-1 dropdown-toggle dropdown-custom" data-bs-toggle="dropdown"> Mamilaza</span>
                    <ul class="dropdown-menu">
                        <li class="text-muted">
                            <h5 class="dropdown-header text-center bolder">Igo Guide</h5>
                        </li>
                        <li class="text-muted"><a class="dropdown-item" href="profil.html"> <i class="fa-solid fa-user"></i> Profil</a></li>
                        <li class="text-muted"><a class="dropdown-item" href="#"> <i class="fa-solid fa-circle-question"></i> Aide</a></li>
                        <li class="text-muted"><a class="dropdown-item" href="#"> <i class="fa-solid fa-cog"></i> Déconnexion</a></li>
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
                        <a href="index.html" class="sidebar-link active">
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
                        <a href="Abonnement.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-grip-vertical"></i></span>
                            <span class="ms-2">Nouvel abonnement</span>
                        </a>
                        <a href="transactions.html" class="sidebar-link">
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
                        <a href="mails.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-scale-balanced"></i></span>
                            <span class="ms-2">Mails</span>
                        </a>
                        <a href="notifications.html" class="sidebar-link">
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
                        <a href="profil.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-grip-vertical"></i></span>
                            <span class="ms-2">Profil</span>
                        </a>
                        <a href="faq.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-phone"></i></span>
                            <span class="ms-2">F.A.Q</span>
                        </a>
                        <a href="cgv.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-receipt"></i></span>
                            <span class="ms-2">C.G.V</span>
                        </a>
                        <a href="cgu.html" class="sidebar-link">
                            <span class="icon"><i class="fa-solid fa-receipt"></i></span>
                            <span class="ms-2">C.G.U</span>
                        </a>
                    </div>
                </div>

            </div>
            <main class="content">
                <h1 class="h3">Nouvelle fiche</h1>
                <div class="form-container shadow shadow-sm">
                    <h6 class="form-title d-flex justify-content-between">
                        <span>Fiches enregistrées</span>
                        <span>
                            <button class="_btn _btn-primary" onclick="createFiche()">
                                <i class="fa-solid fa-plus"></i>
                                <span>Ajouter</span>
                            </button>
                            <button type="button" class="d-none" data-bs-toggle="modal" data-bs-target="#modal-fiche" id="open-modal-fiche"></button>
                        </span>
                    </h6>
                    <div class="form-table">

                        <div class="table-responsive table-sticky">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nom de l'établissement</th>
                                        <th>Adresse</th>
                                        <th>Catégorie</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Mamaliza</td>
                                        <td>Ampandrana en face cité Perrier</td>
                                        <td>Cabanne sous terre</td>
                                        <td>
                                            <span role="button" class="btn-tooltip text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                                                <i class="fa-regular fa-eye"></i>
                                            </span>
                                            <span role="button" class="btn-tooltip text-success" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                                                <i class="fa-regular fa-pen-to-square"></i>
                                            </span>
                                            <span role="button" class="btn-tooltip ms-1 text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Supprimer">
                                                <i class="fa-regular fa-trash-can"></i>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="modal-fiche" tabindex="-1" aria-labelledby="modal-fiche" aria-hidden="true" data-bs-backdrop="static">
                    <div class="modal-dialog" id="form-header">

                        <form class="modal-content">

                            <div class="modal-header">
                                <h1 class="modal-title fs-5">Créer fiche</h1>
                                <button type="button" id="close-modal-fiche" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <span class="sidebar-title my-3">
                                    <span class="bolder">Indentité de l'établissement</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group">
                                    <label>Nom de l'établissement :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Télephone :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Description :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Mot clés :</label>
                                    <input type="text" class="form-control">
                                </div>

                                <span class="sidebar-title my-3">
                                    <span class="bolder">Localisation</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group">
                                    <label>Adresse :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Pays :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Longitude :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Latitude :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Code postal :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Ville :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Région :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Departement :</label>
                                    <input type="text" class="form-control">
                                </div>

                                <span class="sidebar-title my-3">
                                    <span class="bolder">Réseaux sociaux</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group">
                                    <label>Site web :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Facebook :</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Instagram :</label>
                                    <input type="text" class="form-control">
                                </div>


                                <span class="sidebar-title my-3">
                                    <span class="bolder">Média</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group">
                                    <label>Image de l'établissement :</label>
                                    <input type="file" class="form-control">
                                </div>
                                <span class="sidebar-title my-3">
                                    <span class="bolder">Catégories</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group">
                                    <select class="form-select" id="selector-categ">
                                        <option value="categ-1">Hébergements</option>
                                        <option value="categ-2">Où boire</option>
                                        <option value="categ-3">Où manger</option>
                                        <option value="categ-4">Balades</option>
                                        <option value="categ-5">Activités</option>
                                        <option value="categ-6">Services</option>
                                    </select>
                                </div>
                                <span class="sidebar-title my-3">
                                    <span class="bolder">Sous-catégorie</span>
                                    <span class="line"></span>
                                </span>
                                <div class="form-group sc-selector" id="categ-1">
                                    <select class="form-select">
                                        <option value="">Cabanes sur terre</option>
                                        <option value="">Cabanes sous terre</option>
                                        <option value="">Cabanes sur l'eau</option>
                                        <option value="">Cabanes sur Tippis/Tentes/Yourts</option>
                                        <option value="">Habitats roulants</option>
                                        <option value="">Cabanes sur les arbres</option>
                                        <option value="">Bulles</option>
                                        <option value="">Monuments historiques</option>
                                        <option value="">Bâteaux</option>
                                        <option value="">Hébergements de charme</option>
                                        <option value="">Hôtels atypiques</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-2">
                                    <select class="form-select">
                                        <option value="">Bars à lounge/Whisky/Cocktails</option>
                                        <option value="">Concerts bars</option>
                                        <option value="">Bars à vin</option>
                                        <option value="">Pubs-Bars à tapas</option>
                                        <option value="">Bars à thèmes-jeux-billard</option>
                                        <option value="">Bars à rooftop</option>
                                        <option value="">Bars à chat</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-3">
                                    <select class="form-select">
                                        <option value="">Restaurants originaux</option>
                                        <option value="">Restaurants avec animations</option>
                                        <option value="">Cuisines traditionnelle</option>
                                        <option value="">Cuisines du monde</option>
                                        <option value="">Types fast food/tapas</option>
                                        <option value="">Brasseries-Bistrot-Auberges</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-4">
                                    <select class="form-select">
                                        <option value="">Randonnées nature</option>
                                        <option value="">Au fil de l'eau</option>
                                        <option value="">Sites historiques</option>
                                        <option value="">Perles sauvages</option>
                                        <option value="">Les jardins de imaginaire</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-5">
                                    <select class="form-select">
                                        <option value="">Ateliers-Stages</option>
                                        <option value="">Activités physiques et sportives</option>
                                        <option value="">Activités ludiques</option>
                                        <option value="">Activités gustatives</option>
                                        <option value="">Activités éducatives</option>
                                        <option value="">Activités bien-être</option>
                                        <option value="">Shopping artisans et créateurs</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-6">
                                    <select class="form-select">
                                        <option value="">Organisateurs</option>
                                        <option value="">Photographes et vidéo</option>
                                        <option value="">Traiteurs</option>
                                        <option value="">Fleuristes</option>
                                        <option value="">Locations de véhicules</option>
                                        <option value="">Locations de vélos</option>
                                        <option value="">Divers</option>
                                    </select>
                                </div>
                                <span class="sidebar-title my-3">
                                    <span class="bolder">Divers</span>
                                    <span class="line"></span>
                                </span>

                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="_btn _btn-success w-100">Créer</button>
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