<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>IGOGUIDE | PRO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyCD7BvR3RtGHKwPXt_Q6vaSzvwTYzNIZ_0"></script>
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin_dark.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/style.css">
    <style>
        .pac-container {
            z-index: 20000;
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
                    <span class="profil-menu ms-3" style="background-image: url('assets/image/logo-pour-fond-blanc.png');">

                    </span>
                    <span class="ms-1 dropdown-toggle dropdown-custom" data-bs-toggle="dropdown"> <?= $_SESSION['users_nom']; ?></span>
                    <ul class="dropdown-menu">
                        <li class="text-muted">
                            <h5 class="dropdown-header text-center bolder"><?= $_SESSION['users_nom']; ?></h5>
                        </li>
                        <li class="text-muted"><a class="dropdown-item" href="<?= base_url() ?>Pro/profil"> <i class="fa-solid fa-user"></i> Profil</a></li>
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
                        <a href="<?php echo base_url() ?>pro/" class="sidebar-link active">
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
                                        <th>Sous catégorie</th>
                                        <th>Facebook</th>
                                        <th>Instagram</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php for ($ic = 0; $ic < count($data); $ic++) : ?>
                                        <tr>
                                            <td><?= $data[$ic]->etablissements_nom; ?></td>
                                            <td><?= $data[$ic]->etablissements_adresse; ?></td>
                                            <td><?= $data[$ic]->categories_nom; ?></td>
                                            <td><?= $data[$ic]->sous_categories_nom; ?></td>
                                            <td>
                                                <a href="<?= $data[$ic]->etablissements_fb; ?>">Facebook</a>
                                            </td>
                                            <td>
                                                <a href="<?= $data[$ic]->etablissements_insta; ?>">Instagram</a>
                                            </td>
                                            <td>
                                                <a href=""  data-bs-toggle="modal" data-bs-target="#myModalShow<?= $data[$ic]->etablissements_id; ?>">
                                                    <span role="button" class="btn-tooltip text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                                                        <i class="fa-regular fa-eye"></i>
                                                    </span>
                                                </a>
                                                <a href="#">
                                                    <span role="button" class="btn-tooltip text-success" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                                                        <i class="fa-regular fa-pen-to-square"></i>
                                                    </span>
                                                </a>
                                                <a href="<?= base_url(); ?>Pro/dropEtablissement/<?= $data[$ic]->etablissements_id; ?>">
                                                    <span role="button" class="btn-tooltip ms-1 text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Supprimer">
                                                        <i class="fa-regular fa-trash-can"></i>
                                                    </span>
                                                </a>
                                            </td>
                                        </tr>

                                        <!-- The Modal -->
                                        <div class="modal fade" id="myModalShow<?= $data[$ic]->etablissements_id; ?>">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Description fiche</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        Modal body..
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <!-- <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                    </div> -->

                                                </div>
                                            </div>
                                        </div>


                                    <?php endfor; ?>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="modal-fiche" tabindex="-1" aria-labelledby="modal-fiche" aria-hidden="true" data-bs-backdrop="static">
                    <div class="modal-dialog modal-xl" id="form-header">

                        <!-- <form class="modal-content"> -->
                        <?php echo form_open_multipart('Pro/addEtablissement', array("class" => "modal-content")); ?>

                        <div class="modal-header">
                            <h1 class="modal-title fs-5">Créer fiche</h1>
                            <button type="button" id="close-modal-fiche" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <span class="sidebar-title my-3">
                                <span class="bolder">Indentité de l'établissement</span>
                                <span class="line"></span>
                            </span>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Nom de l'établissement :</label>
                                        <input type="text" class="form-control" name="etablissements_nom">
                                    </div>
                                    <div class="form-group">
                                        <label>Télephone :</label>
                                        <input type="text" class="form-control" name="etablissements_telephone">
                                    </div>
                                    <div class="form-group">
                                        <label>Mot clés :</label>
                                        <input type="text" class="form-control" name="etablissements_motcle">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email :</label>
                                        <input type="text" class="form-control" name="etablissements_email">
                                    </div>
                                    <div class="form-group">
                                        <label>Description :</label>
                                        <input type="text" class="form-control" name="etablissements_presentation">
                                    </div>
                                </div>
                            </div>




                            <span class="sidebar-title my-3">
                                <span class="bolder">Localisation</span>
                                <span class="line"></span>
                            </span>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Adresse :</label>
                                        <input type="text" class="form-control" id="searchTextField" name="etablissement_adresse">
                                    </div>
                                    <div class="form-group">
                                        <label>Pays :</label>
                                        <input type="text" class="form-control" id='pays' name="etablissements_pays">
                                    </div>
                                    <div class="form-group">
                                        <label>Longitude :</label>
                                        <input type="text" class="form-control" id="longitude" name="etablissements_longitude">
                                    </div>
                                    <div class="form-group">
                                        <label>Latitude :</label>
                                        <input type="text" class="form-control" id="latitude" name="etablissements_latitude">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Code postal :</label>
                                        <input type="text" class="form-control" id="code_postal" name="etablissements_codepostal">
                                    </div>
                                    <div class="form-group">
                                        <label>Ville :</label>
                                        <input type="text" class="form-control" id="ville" name="etablissements_ville">
                                    </div>
                                    <div class="form-group">
                                        <label>Région :</label>
                                        <input type="text" class="form-control" id="region" name="etablissements_region">
                                    </div>
                                    <div class="form-group">
                                        <label>Departement :</label>
                                        <input type="text" class="form-control" id="departement" name="etablissements_departement">
                                    </div>
                                </div>
                            </div>



                            <span class="sidebar-title my-3">
                                <span class="bolder">Réseaux sociaux</span>
                                <span class="line"></span>
                            </span>
                            <div class="form-group">
                                <label>Site web :</label>
                                <input type="text" class="form-control" name="etablissements_website">
                            </div>
                            <div class="form-group">
                                <label>Facebook :</label>
                                <input type="text" class="form-control" name="etablissements_fb">
                            </div>
                            <div class="form-group">
                                <label>Instagram :</label>
                                <input type="text" class="form-control" name="etablissements_insta">
                            </div>


                            <span class="sidebar-title my-3">
                                <span class="bolder">Média</span>
                                <span class="line"></span>
                            </span>
                            <div class="form-group">
                                <label>Image de l'établissement :</label>
                                <input type="file" class="form-control" name="etablissements_photo">
                            </div>
                            <span class="sidebar-title my-3">
                                <span class="bolder">Catégories</span>
                                <span class="line"></span>
                            </span>
                            <div class="form-group">
                                <select class="form-select" id="selector-categ" name="categorie">
                                    <!-- <option value="categ-1">Hébergements</option>
                                        <option value="categ-2">Où boire</option>
                                        <option value="categ-3">Où manger</option>
                                        <option value="categ-4">Balades</option>
                                        <option value="categ-5">Activités</option>
                                        <option value="categ-6">Services</option> -->
                                </select>
                            </div>
                            <span class="sidebar-title my-3">
                                <span class="bolder">Sous-catégorie</span>
                                <span class="line"></span>
                            </span>

                            <?php if (isset($sc)) : ?>
                                <?php for ($sc_id = 0; $sc_id < count($sc); $sc_id++) : ?>
                                    <div class="form-group d-none sc-selector" id="categ-<?php echo $sc_id + 1 ?>">
                                        <select class="form-select" name="sc_<?php echo $sc_id + 1 ?>">
                                            <?php for ($ssc_id = 0; $ssc_id < count($sc[$sc_id]); $ssc_id++) : ?>
                                                <option value="<?php echo $sc[$sc_id][$ssc_id]->sous_categories_id; ?>"><?php echo $sc[$sc_id][$ssc_id]->sous_categories_nom; ?></option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                <?php endfor; ?>
                            <?php endif; ?>

                            <!-- <div class="form-group sc-selector" id="categ-1">
                                    <select class="form-select" name="sc">
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
                                    <select class="form-select" name="sc">
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
                                    <select class="form-select" name="sc">
                                        <option value="">Restaurants originaux</option>
                                        <option value="">Restaurants avec animations</option>
                                        <option value="">Cuisines traditionnelle</option>
                                        <option value="">Cuisines du monde</option>
                                        <option value="">Types fast food/tapas</option>
                                        <option value="">Brasseries-Bistrot-Auberges</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-4">
                                    <select class="form-select" name="sc">
                                        <option value="">Randonnées nature</option>
                                        <option value="">Au fil de l'eau</option>
                                        <option value="">Sites historiques</option>
                                        <option value="">Perles sauvages</option>
                                        <option value="">Les jardins de imaginaire</option>
                                    </select>
                                </div>
                                <div class="form-group d-none sc-selector" id="categ-5">
                                    <select class="form-select" name="sc">
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
                                    <select class="form-select" name="sc">
                                        <option value="">Organisateurs</option>
                                        <option value="">Photographes et vidéo</option>
                                        <option value="">Traiteurs</option>
                                        <option value="">Fleuristes</option>
                                        <option value="">Locations de véhicules</option>
                                        <option value="">Locations de vélos</option>
                                        <option value="">Divers</option>
                                    </select>
                                </div> -->
                            <span class="sidebar-title my-3">
                                <span class="bolder">Divers</span>
                                <span class="line"></span>
                            </span>
                            <div class="row d-none divers-selector" id="divers-1">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Tarif :</label>
                                        <input type="number" name="tarif" class="form-control" min="0">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="piscines"> Piscines
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="salle_de_bain_et_wc"> Salle de bain et W.C
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="animaux"> Animaux
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="lits_doubles"> Lits doubles
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="lits_superposes"> Lits superposés
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Capacité :</label>
                                        <input type="number" class="form-control" min="0" name="capacite">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="bain_a_remous"> Bain à remous
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="acces_a_internet"> Accès à Internet
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="enfants"> Enfants
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="lits_appoints"> Lits d'appoints
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="accessible_handicapes"> Accessible aux handicapés
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Age minimum :</label>
                                        <input type="number" class="form-control" min="0" name="age_minimum">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="sauna"> Sauna
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="menage_inclus"> Ménage inclus
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="petit_dejeuner"> Petit déjeuner inclus
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="lits_pour_bebe"> Lits pour bébé
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="manger_sur_place"> Possibilité de manger sur place
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Nombre de couchage :</label>
                                        <input type="number" class="form-control" min="0" name="nombre_de_couchage">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="cuisines"> Cuisines
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="draps_et_linges"> Draps et linges inclus
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="lits_simples"> Lits simples
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="canapes_lits"> Canapés lits
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row d-none divers-selector" id="divers-2">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Heure d'ouverture :</label>
                                        <input type="time" class="form-control" name="heure_ouverture_2">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Heure de fermeture :</label>
                                        <input type="time" class="form-control" name="heure_fermeture_2">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Tarif :</label>
                                        <input type="number" class="form-control" name="tarif_2" min="0">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Adapté aux handicapés :
                                        </label>

                                        <input type="checkbox" name="adapte_handicap_2">
                                    </div>
                                </div>
                            </div>
                            <div class="row d-none divers-selector" id="divers-3">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Jours non ouverts :</label>
                                        <input type="text" class="form-control" name="jours_non_ouverts" placeholder="ex: Lundi, Mardi, Mercredi,...">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="famille_enfants"> Famille avec enfants
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="livraisons"> Livraisons
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Heure d'ouverture :</label>
                                        <input type="time" class="form-control" name="heure_ouverture">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="conseille_groupes"> Conseillé pour groupes
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="accessible_handicapes"> Accessible aux handicapés
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Heure de fermeture :</label>
                                        <input type="time" class="form-control" name="heure_fermeture">
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="repas_place"> Repas sur place
                                        </label>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            <input type="checkbox" name="repas_emportes"> Repas emportés
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row d-none divers-selector" id="divers-4">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Durée de la balade :</label>
                                        <input type="time" class="form-control" name="duree_balade">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Tarif à partir de :</label>
                                        <input type="number" class="form-control" min="0" name="tarif_a_partir">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Distance du parcours (en Km):</label>
                                        <input type="number" class="form-control" min="0" name="distance_parcours">
                                    </div>
                                </div>
                            </div>


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
    <script type="text/javascript">
        function initialize() {
            var input = document.getElementById('searchTextField');
            var autocomplete = new google.maps.places.Autocomplete(input);
            google.maps.event.addListener(autocomplete, 'place_changed', function() {
                var place = autocomplete.getPlace();
                var longitude = place.geometry.location.lng();
                var latitude = place.geometry.location.lat();
                document.getElementById('latitude').value = latitude;
                document.getElementById('longitude').value = longitude;
                console.log(place.address_components);

                for (var i = 0; i < place.address_components.length; i += 1) {
                    var expression = place.address_components[i].types[0];

                    switch (expression) {
                        case "country":
                            document.getElementById('pays').value = place.address_components[i].long_name;
                            break;

                        case "locality":
                            document.getElementById('ville').value = place.address_components[i].long_name;
                            break;

                        case "administrative_area_level_1":
                            document.getElementById('region').value = place.address_components[i].long_name;
                            break;

                        case "postal_code":
                            document.getElementById('code_postal').value = place.address_components[i].long_name;
                            break;

                        case "administrative_area_level_2":
                            document.getElementById('departement').value = place.address_components[i].long_name;
                            break;
                    }
                }

            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</body>

</html>