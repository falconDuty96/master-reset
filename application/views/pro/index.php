<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>IGOGUIDE | PRO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyCD7BvR3RtGHKwPXt_Q6vaSzvwTYzNIZ_0"></script>
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/admin_dark.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/style.css">
    <link rel="stylesheet" href="<?= base_url() ?>publics/pro/css/image-uploader.min.css">
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
                <h1 class="h3">Nouvel fiche</h1>
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
                                                <a href="" data-bs-toggle="modal" data-bs-target="#myModalShow<?= $data[$ic]->etablissements_id; ?>">
                                                    <span role="button" class="btn-tooltip text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                                                        <i class="fa-regular fa-eye"></i>
                                                    </span>
                                                </a>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#myModalEdit<?= $data[$ic]->etablissements_id; ?>">
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
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Description fiche</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body" style="min-height: 500px">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <!-- Identité -->
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Identité</span>
                                                                    <span class="line"></span>
                                                                </span>
                                                                <div class="row">
                                                                    <div class="col-md-4">Nom de l'établissement : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_nom; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">E-mail : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_email; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Télephone : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_telephone; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Description : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_presentation; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Mot clé : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_motcle; ?>
                                                                    </div>
                                                                </div>


                                                                <!-- Localisation -->
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Localisation</span>
                                                                    <span class="line"></span>

                                                                </span>
                                                                <div class="row">
                                                                    <div class="col-md-4">Adresse : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_adresse; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Pays : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_pays; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Longitude : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_longitude; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Latitude : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_latitude; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Code postal : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_codepostal; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Ville : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_ville; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Région : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_region; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Département : </div>
                                                                    <div class="col-md-8">
                                                                        <?= $data[$ic]->etablissements_departement; ?>
                                                                    </div>
                                                                </div>

                                                                <!-- Photos -->
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Photos</span>
                                                                    <span class="line"></span>
                                                                </span>
                                                                <div class="row">
                                                                    <div class="col-md-4">Photos : </div>
                                                                    <div class="col-md-8">

                                                                        <!-- <div class="image-preview-modif"></div> -->
                                                                        <?php
                                                                        $photo_etab = json_decode($data[$ic]->etablissements_photo);
                                                                        for ($pe = 0; $pe < count($photo_etab); $pe++) : ?>
                                                                            <img width="100" class="mr-2" src="<?= base_url() ?>publics/<?= $photo_etab[$pe] ?>" alt="">
                                                                        <?php endfor; ?>

                                                                    </div>
                                                                </div>

                                                                <!-- Catégories -->
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Catégorie et sous catégorie</span>
                                                                    <span class="line"></span>
                                                                </span>
                                                                <div class="row">
                                                                    <div class="col-md-4">Catégorie : </div>
                                                                    <div class="col-md-8">
                                                                        <?php echo $data[$ic]->categories_nom; ?>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Sous catégorie : </div>
                                                                    <div class="col-md-8">
                                                                        <?php echo $data[$ic]->sous_categories_nom; ?>
                                                                    </div>
                                                                </div>

                                                                <!-- Catégories -->
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Réseaux sociaux</span>
                                                                    <span class="line"></span>
                                                                </span>
                                                                <div class="row">
                                                                    <div class="col-md-4">Facebook : </div>
                                                                    <div class="col-md-8">
                                                                        <a href="<?php echo $data[$ic]->etablissements_fb; ?>">Facebook</a>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-md-4">Instagram : </div>
                                                                    <div class="col-md-8">
                                                                        <a href="<?php echo $data[$ic]->etablissements_insta; ?>">Instagram</a>
                                                                    </div>
                                                                </div>

                                                                <!-- Activités -->
                                                                <?php
                                                                $act = json_decode($data[$ic]->etablissements_activites);


                                                                ?>
                                                                <span class="sidebar-title mt-3">
                                                                    <span class="bolder">Activités</span>
                                                                    <span class="line"></span>
                                                                </span>
                                                                <?php
                                                                $act = json_decode($data[$ic]->etablissements_activites);
                                                                foreach ($act as $key => $value) :
                                                                    if ($value != null) :
                                                                ?>
                                                                        <div class="row">
                                                                            <div class="col-md-4"><?= $key; ?> : </div>
                                                                            <div class="col-md-8">
                                                                                <?php if ($value == "on") : ?>
                                                                                    OUI
                                                                                <?php else : ?>
                                                                                    <?= $value; ?>
                                                                                <?php endif; ?>
                                                                            </div>
                                                                        </div>
                                                                <?php
                                                                    endif;
                                                                endforeach;
                                                                ?>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <!-- <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                    </div> -->

                                                </div>
                                            </div>
                                        </div>




                                        <!-- Modal modif etablissements -->
                                        <!-- The Modal -->
                                        <div class="modal fade" id="myModalEdit<?= $data[$ic]->etablissements_id; ?>">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Modifier fiche</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>
                                                    <?php echo form_open_multipart('Pro/editEtablissement/' . $data[$ic]->etablissements_id . '', array("class" => "modal-content")); ?>
                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Indentité de l'établissement</span>
                                                            <span class="line"></span>
                                                        </span>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Nom de l'établissement :</label>
                                                                    <input type="text" class="form-control" name="etablissements_nom" value="<?= $data[$ic]->etablissements_nom; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Télephone :</label>
                                                                    <input type="text" class="form-control" name="etablissements_telephone" value="<?= $data[$ic]->etablissements_telephone; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Mot clés :</label>
                                                                    <input type="text" class="form-control" name="etablissements_motcle" value="<?= $data[$ic]->etablissements_motcle; ?>" required>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Email :</label>
                                                                    <input type="email" class="form-control" name="etablissements_email" value="<?= $data[$ic]->etablissements_email; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Description :</label>
                                                                    <input type="text" class="form-control" name="etablissements_presentation" value="<?= $data[$ic]->etablissements_presentation; ?>" required>
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
                                                                    <input type="text" class="form-control" id="searchTextFieldModif" name="etablissement_adresse" value="<?= $data[$ic]->etablissements_adresse; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Pays :</label>
                                                                    <input type="text" class="form-control" id='paysModif' name="etablissements_pays" value="<?= $data[$ic]->etablissements_pays; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Longitude :</label>
                                                                    <input type="text" class="form-control" id="longitudeModif" name="etablissements_longitude" value="<?= $data[$ic]->etablissements_longitude; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Latitude :</label>
                                                                    <input type="text" class="form-control" id="latitudeModif" name="etablissements_latitude" value="<?= $data[$ic]->etablissements_latitude; ?>" required>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Code postal :</label>
                                                                    <input type="text" class="form-control" id="code_postalModif" name="etablissements_codepostal" value="<?= $data[$ic]->etablissements_codepostal; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Ville :</label>
                                                                    <input type="text" class="form-control" id="villeModif" name="etablissements_ville" value="<?= $data[$ic]->etablissements_ville; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Région :</label>
                                                                    <input type="text" class="form-control" id="regionModif" name="etablissements_region" value="<?= $data[$ic]->etablissements_region; ?>" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Departement :</label>
                                                                    <input type="text" class="form-control" id="departementModif" name="etablissements_departement" value="<?= $data[$ic]->etablissements_departement; ?>" required>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Réseaux sociaux</span>
                                                            <span class="line"></span>
                                                        </span>
                                                        <div class="form-group">
                                                            <label>Site web :</label>
                                                            <input type="text" class="form-control" name="etablissements_website" value="<?= $data[$ic]->etablissements_website; ?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Facebook :</label>
                                                            <input type="text" class="form-control" name="etablissements_fb" value="<?= $data[$ic]->etablissements_fb; ?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Instagram :</label>
                                                            <input type="text" class="form-control" name="etablissements_insta" value="<?= $data[$ic]->etablissements_insta; ?>">
                                                        </div>

                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Média</span>
                                                            <span class="line"></span>
                                                        </span>
                                                        <div class="form-group">
                                                            <label>Image de l'établissement :</label>
                                                            <input type="file" class="form-control" name="etablissements_photo[]" multiple>
                                                            <?php
                                                            $photo_etab = json_decode($data[$ic]->etablissements_photo);
                                                            for ($pe = 0; $pe < count($photo_etab); $pe++) : ?>
                                                                <img width="100" class="mr-2" src="<?= base_url() ?>publics/<?= $photo_etab[$pe] ?>" alt="">
                                                            <?php endfor; ?>
                                                        </div>
                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Catégories</span>
                                                            <span class="line"></span>
                                                        </span>
                                                        <div class="form-group">
                                                            <select class="form-select" id="selector-categ-modif" name="categorie">

                                                            </select>
                                                        </div>
                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Sous-catégorie</span>
                                                            <span class="line"></span>
                                                        </span>

                                                        <?php if (isset($sc)) : ?>
                                                            <?php for ($sc_id = 0; $sc_id < count($sc); $sc_id++) : ?>
                                                                <div class="form-group d-none sc-selector" id="categ-<?php echo $sc_id + 1 ?>-modif">
                                                                    <select class="form-select" name="sc_<?php echo $sc_id + 1 ?>">
                                                                        <?php for ($ssc_id = 0; $ssc_id < count($sc[$sc_id]); $ssc_id++) : ?>
                                                                            <option value="<?php echo $sc[$sc_id][$ssc_id]->sous_categories_id; ?>"><?php echo $sc[$sc_id][$ssc_id]->sous_categories_nom; ?></option>
                                                                        <?php endfor; ?>
                                                                    </select>
                                                                </div>
                                                            <?php endfor; ?>
                                                        <?php endif; ?>
                                                        <span class="sidebar-title my-3">
                                                            <span class="bolder">Divers</span>
                                                            <span class="line"></span>
                                                        </span>
                                                        <div class="row d-none divers-selector" id="divers-1-modif">
                                                            <div class="col-md-3">
                                                                <div class="form-group">

                                                                    <div class="row">
                                                                        <div class="col-md-8">
                                                                            <label>Tarif :</label>
                                                                            <input type="number" name="tarif" class="form-control" min="0">
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <input type="checkbox" name="nuits"> Nuits
                                                                            <input type="checkbox" name="jours"> Jours
                                                                        </div>
                                                                    </div>
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
                                                        <div class="row d-none divers-selector" id="divers-2-modif">
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
                                                        <div class="row d-none divers-selector" id="divers-3-modif">
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
                                                        <div class="row d-none divers-selector" id="divers-4-modif">
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
                    <h1 class="modal-title fs-5">Créer un fiche</h1>
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
                                <input type="text" class="form-control" name="etablissements_nom" required>
                            </div>
                            <div class="form-group">
                                <label>Télephone :</label>
                                <input type="text" class="form-control" name="etablissements_telephone" required>
                            </div>
                            <div class="form-group">
                                <label>Mot clés :</label>
                                <input type="text" class="form-control" name="etablissements_motcle" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email :</label>
                                <input type="email" class="form-control" name="etablissements_email" required>
                            </div>
                            <div class="form-group">
                                <label>Description :</label>
                                <input type="text" class="form-control" name="etablissements_presentation" required>
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
                                <input type="text" class="form-control" id="searchTextField" name="etablissement_adresse" required>
                            </div>
                            <div class="form-group">
                                <label>Pays :</label>
                                <input type="text" class="form-control" id='pays' name="etablissements_pays" required>
                            </div>
                            <div class="form-group">
                                <label>Longitude :</label>
                                <input type="text" class="form-control" id="longitude" name="etablissements_longitude" required>
                            </div>
                            <div class="form-group">
                                <label>Latitude :</label>
                                <input type="text" class="form-control" id="latitude" name="etablissements_latitude" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Code postal :</label>
                                <input type="text" class="form-control" id="code_postal" name="etablissements_codepostal" required>
                            </div>
                            <div class="form-group">
                                <label>Ville :</label>
                                <input type="text" class="form-control" id="ville" name="etablissements_ville" required>
                            </div>
                            <div class="form-group">
                                <label>Région :</label>
                                <input type="text" class="form-control" id="region" name="etablissements_region" required>
                            </div>
                            <div class="form-group">
                                <label>Departement :</label>
                                <input type="text" class="form-control" id="departement" name="etablissements_departement" required>
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
                        <!-- <input type="file" class="form-control" name="etablissements_photo[]" multiple> -->
                        <div class="input-images"></div>
                    </div>

                    <span class="sidebar-title my-3">
                        <span class="bolder">Catégories</span>
                        <span class="line"></span>
                    </span>
                    <div class="form-group">
                        <select class="form-select" id="selector-categ" name="categorie">

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
                    <span class="sidebar-title my-3">
                        <span class="bolder">Divers</span>
                        <span class="line"></span>
                    </span>
                    <div class="row d-none divers-selector" id="divers-1">
                        <div class="col-md-3">
                            <div class="form-group">

                                <div class="row">
                                    <div class="col-md-8">
                                        <label>Tarif :</label>
                                        <input type="number" name="tarif" class="form-control" min="0">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="checkbox" name="nuits"> Nuits
                                        <input type="checkbox" name="jours"> Jours
                                    </div>
                                </div>
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
    <script src="<?= base_url() ?>publics/pro/js/image-uploader.min.js"></script>
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


        // Modif
        function initializeModif() {
            var input = document.getElementById('searchTextFieldModif');
            var autocomplete = new google.maps.places.Autocomplete(input);
            google.maps.event.addListener(autocomplete, 'place_changed', function() {
                var place = autocomplete.getPlace();
                var longitude = place.geometry.location.lng();
                var latitude = place.geometry.location.lat();
                document.getElementById('latitudeModif').value = latitude;
                document.getElementById('longitudeModif').value = longitude;
                console.log(place.address_components);

                for (var i = 0; i < place.address_components.length; i += 1) {
                    var expression = place.address_components[i].types[0];

                    switch (expression) {
                        case "country":
                            document.getElementById('paysModif').value = place.address_components[i].long_name;
                            break;

                        case "locality":
                            document.getElementById('villeModif').value = place.address_components[i].long_name;
                            break;

                        case "administrative_area_level_1":
                            document.getElementById('regionModif').value = place.address_components[i].long_name;
                            break;

                        case "postal_code":
                            document.getElementById('code_postalModif').value = place.address_components[i].long_name;
                            break;

                        case "administrative_area_level_2":
                            document.getElementById('departementModif').value = place.address_components[i].long_name;
                            break;
                    }
                }

            });
        }
        google.maps.event.addDomListener(window, 'load', initializeModif);
    </script>

    <script>
        $(document).ready(function() {

            $('.input-images').imageUploader({
                label: 'Deplacer votre image ici', //This option defines the label text for a draggable area that helps users to understand what to do. Default: ‘Drag & Drop files here or click to browse’, Type: String.
                //Define the preloaded images for upload form. Default: [], Type: Array of Objects. 
                // preloaded: [
                //     { id: 1, src: 'https://picsum.photos/500/500?random=1' },
                //     { id: 2, src: 'https://picsum.photos/500/500?random=2' },
                // ], 
                imagesInputName: 'etablissements_photo', // It defines the name of the input that will be posted, containing the files list. Default: ‘images’, Type: String. 
                // preloadedInputName: 'Custom Name', //Show the name of the inputs that will be posted, containing the identification of the preloaded image. Default: ‘preloaded’, Type: String.
            });



            // $(".image-preview-modif").imageUploader({
            //     label: 'Deplacer votre image ici',
            //     preloaded: [
            //         { id: 1, src: 'https://picsum.photos/500/500?random=1' },
            //         { id: 2, src: 'https://picsum.photos/500/500?random=2' },
            //     ], 
            //     imagesInputName: 'etablissements_photo',
            // })

            // $(".input-images,.image-preview-modif").css({
            //     'cursor':"pointer"
            // })


        });
    </script>
</body>

</html>