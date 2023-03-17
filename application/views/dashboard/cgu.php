<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Igoguide | Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>publics/dashboard/css/styles.css" rel="stylesheet" />
    <link href="<?php echo base_url() ?>publics/dashboard/css/dashboard.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed" style="background-color: #f5eee6;">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="index.html">
            <img src="<?php echo base_url() ?>publics/image/logo.png" style="width: 50px ;" alt="">
        </a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
                <!-- <input class="form-control" type="text" placeholder="..." aria-label="Search for..." aria-describedby="btnNavbarSearch" /> -->
                <!-- <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button> -->
            </div>
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#myModalParametre">Parametres</a></li>
                    <li><a class="dropdown-item" href="<?php echo base_url() ?>Dashboard/deconnect">Se déconnecter</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <!-- The Modal -->
    <div class="modal fade" id="myModalParametre">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Modifier</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <?php echo form_open("Dashboard/modifSuperUser/" . $su[0]->superuser_id, array("class" => "form-group")) ?>
                    <label>Pseudo</label>
                    <input type="text" class="form-control my-2" name="superuser_pseudo" value="<?php echo $su[0]->superuser_pseudo; ?>">
                    <label>Mot de passe</label>
                    <input type="password" class="form-control my-2" name="superuser_motdepasse">
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">

                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="Modifier">
                    </form>
                </div>

            </div>
        </div>
    </div>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Page d'accueil</div>
                        <a class="nav-link " href="<?php echo base_url() ?>Dashboard/">
                            <div class="sb-nav-link-icon"><i class="fas fa-question"></i></div>
                            Comment ça marche ?
                        </a>
                        <a class="nav-link " href="<?php echo base_url() ?>Dashboard/categories">
                            <div class="sb-nav-link-icon"><i class="fas fa-list-alt"></i></div>
                            Catégories
                        </a>
                        <a class="nav-link" href="<?php echo base_url() ?>Dashboard/blogs">
                            <div class="sb-nav-link-icon"><i class="fas fa-blog"></i></div>
                            Blogs
                        </a>
                        <a class="nav-link activate" href="<?php echo base_url() ?>Dashboard/cgu">
                            <div class="sb-nav-link-icon"><i class="fas fa-ruler"></i></div>
                            CGU
                        </a>
                        <a class="nav-link " href="<?php echo base_url() ?>Dashboard/cgv">
                            <div class="sb-nav-link-icon"><i class="fas fa-balance-scale"></i></div>
                            CGV
                        </a>
                        <a class="nav-link" href="<?php echo base_url() ?>Dashboard/faq">
                            <div class="sb-nav-link-icon"><i class="fas fa-voicemail"></i></div>
                            FAQ
                        </a>
                        <a class="nav-link" href="<?php echo base_url() ?>Dashboard/fiches">
                            <div class="sb-nav-link-icon"><i class="fas fa-voicemail"></i></div>
                            Fiches
                        </a>
                        <a class="nav-link" href="<?php echo base_url() ?>Dashboard/statistiques">
                            <div class="sb-nav-link-icon"><i class="fas fa-voicemail"></i></div>
                            Statistiques
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Connecté(e) en tant qu'administrateur</div>

                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <div class="row">
                        <!-- <div class="col-md-12">
                                <h3>Comment ça marche ?</h3>
                            </div> -->
                    </div>
                    <div class="row pt-3 mt-3" style="height: 600px ;background-color: white ;overflow-y: auto ;">
                        <div class="col-md-5">
                            <?php echo form_open_multipart("Dashboard/cguAdding", array('class' => "form-group p-4")) ?>
                            <div class="row mb-2">
                                <div class="col-md-4">
                                    <span class="textToBold">CGU Type</span>
                                </div>
                                <div class="col-md-8">
                                    <select class="form-select" name="cgu_type">
                                        <option value="professionnel">Professionnels</option>
                                        <option value="particulier">Particuliers</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-4">
                                    <span class="textToBold">CGU Entête</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" name="cgu_entete" class="form-control">
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-4">
                                    <span class="textToBold">CGU Contenu</span>
                                </div>
                                <div class="col-md-8">
                                    <textarea class="input-wysiwyg" name="cgu_contenu"></textarea>
                                </div>
                            </div>
                            <div class="row mb-2">
                                <div class="col-md-4">
                                </div>
                                <div class="col-md-8">
                                    <input class="btn btn-primary" type="submit" value="Enregistrer">
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <table class="border mt-3 table table-striped">
                            <thead style="background-color:#fec20b;">
                                <tr>
                                    <th>Type</th>
                                    <th>Entête</th>
                                    <th>Contenu</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if (isset($cgu)) : ?>
                                    <?php for ($i = 0; $i < count($cgu); $i++) : ?>
                                        <tr>
                                            <td><?php echo $cgu[$i]->cgu_entete; ?></td>
                                            <td><?php echo $cgu[$i]->cgu_type; ?></td>
                                            <td><?php echo $cgu[$i]->cgu_contenu; ?></td>

                                            <td>
                                                <a href="#" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#myModal<?php echo $cgu[$i]->cgu_id ?>">Modifier</a>
                                                <a href="<?= base_url(); ?>Dashboard/dropCGU/<?php echo $cgu[$i]->cgu_id ?>" class="btn btn-danger">Supprimer</a>
                                            </td>
                                        </tr>

                                        <!-- The Modal -->
                                        <div class="modal fade" id="myModal<?php echo $cgu[$i]->cgu_id ?>">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <!-- Modal Header -->
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Modification</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                                    </div>

                                                    <!-- Modal body -->
                                                    <div class="modal-body">
                                                        <?php echo form_open("Dashboard/modifCGU/{$cgu[$i]->cgu_id}"); ?>
                                                        <div class="row mb-2">
                                                            <div class="col-md-4">
                                                                <span class="textToBold">CGU Type</span>
                                                            </div>
                                                            <div class="col-md-8">
                                                                <select class="form-select" name="cgu_type">
                                                                    <option value="<?php echo $cgu[$i]->cgu_type; ?>"><?php echo $cgu[$i]->cgu_type; ?>s</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-md-3">
                                                                <span class="textToBold">Entête</span>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="text" name="cgu_entete" class="form-control" value="<?php echo $cgu[$i]->cgu_entete; ?>">
                                                            </div>
                                                        </div>
                                                        <div class="row mb-2">
                                                            <div class="col-md-3">
                                                                <span class="textToBold">Contenu</span>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <textarea class="input-wysiwyg" name="cgu_contenu"><?php echo $cgu[$i]->cgu_contenu; ?></textarea>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Modal footer -->
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                                                        <input class="btn btn-primary" type="submit" value="Modifier">
                                                        </form>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>



                                    <?php endfor; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
            </main>

        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="<?php echo base_url() ?>publics/dashboard/js/scripts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="<?php echo base_url() ?>publics/dashboard/assets/demo/chart-area-demo.js"></script>
    <script src="<?php echo base_url() ?>publics/dashboard/assets/demo/chart-bar-demo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
    <script src="<?php echo base_url() ?>publics/dashboard/js/datatables-simple-demo.js"></script>
    <script src="https://cdn.tiny.cloud/1/l06ynxeds4qx56hp791skqu2sa71b2rzyhee9qj6e4opw7gm/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        function initWysiwyg() {
            tinymce.init({
                selector: 'textarea.input-wysiwyg',
                plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
                toolbar: 'undo redo | bold italic underline | numlist bullist indent outdent | link image media | align lineheight | fontfamily fontsize ',
            });
        }
        initWysiwyg();
    </script>
</body>

</html>