
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
        <link href="<?php echo base_url()?>publics/dashboard/css/styles.css" rel="stylesheet" />
        <link href="<?php echo base_url()?>publics/dashboard/css/dashboard.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed" style="background-color: #f5eee6;">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">
                <img src="<?php echo base_url()?>publics/image/logo.png" style="width: 50px ;" alt="">
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
                        <li><a class="dropdown-item" href="<?php echo base_url()?>Dashboard/deconnect">Se déconnecter</a></li>
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
                      <?php echo form_open("Dashboard/modifSuperUser/".$su[0]->superuser_id, array("class" => "form-group")) ?>
                      <label>Pseudo</label>
                      <input type="text" class="form-control my-2" name="superuser_pseudo" value="<?php echo $su[0]->superuser_pseudo ; ?>">
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
                        <a class="nav-link " href="<?php echo base_url() ?>Dashboard/cgu">
                            <div class="sb-nav-link-icon"><i class="fas fa-ruler"></i></div>
                            CGU
                        </a>
                        <a class="nav-link activate" href="<?php echo base_url() ?>Dashboard/faq">
                            <div class="sb-nav-link-icon"><i class="fas fa-voicemail"></i></div>
                            FAQ
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
                            <div class="col-md-12">
                                <h3>Comment ça marche ?</h3>
                                <div class="card">
        <div class="card-body">
          <h5 class="card-title">Foire Aux Questions</h5>

          <div class="col-1" style="justify-content:center;">
            <a href="/"><i class="bi bi-arrow-left" title="retour sur la page d'accueil" style="color:rgb(0, 11, 135), 15, 176);font-size:26px"></i></a>
          </div>

          <!-- Default Accordion -->
          <div class="accordion" id="accordionExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" id="transform">
                    IGOguide à l'air d'avoir choisi des endroits assez atypiques, voir vraiment insolites. Pourquoi ce choix?
                </button>
              </h2>
              <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  Les guides et annuaires dit classiques des hébergements, de bars, de restaurants, de balades, d'activités fleurissent tous les jours sur la toile. IGOguide se voulait différent de plusieurs façons afin de se démarquer, dont principalement 3 axes: <br><br>
                 
                  <ol>
                    <li> Rassembler toutes les catégories de loisirs sur une même plateforme</li>
                    <li> Faciliter la recherche grâce aux mots-clés, aux cartes et au contact direct avec les établissements</li>
                    <li> Etre sûr de proposer des choses surprenantes adaptées aux occasions, aux sorties, aux envies!</li>
                  </ol>
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" id="transform">
                  <uppercase>Comment faire une recherche efficace?
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ul>
                        <li> Grâce au menu qui possède 6 catégories, ayant elles-même un ensemble de sous-catégories afin d'affiner au mieux votre recherche</li>
                        <li> Mais aussi avec la barre de recherche où vous mettez vos mots-clés suivant la priorité de votre demande. Cela pourrait être : l’établissement, l’activité, mais cela peut-être aussi enfants, animaux, spa par exemple et ensuite le lieu.  Exemple : cabanes dans les arbres, Bretagne.</li>
                        <li> Puis La recherche sur la carte par régions</li>
                        <li> Et enfin sur la liste par départements</li>
                      </ul>
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" id="transform">
                    Quel est le principe de la carte interactive ?
                </button>
              </h2>
              <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Jetez votre dévolu sur un établissement et choisissez avec facilité toutes vos activités se trouvant autour! Mais l'inverse est valable aussi! Faites l'activité tant attendue et vous trouverez de quoi vous restaurer et dormir à proximité!!!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading4">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapse4" id="transform">
                    En quoi peuvent m'être utile les "Services" sur IGOguide?
                </button>
              </h2>
              <div id="collapse4" class="accordion-collapse collapse" aria-labelledby="heading4" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Votre humble serviteur, Mister IGOguide a pensé à tout ! Votre catégorie "services" vous permet d'avoir accès à tous les petits + pour organiser au mieux votre séjour.<br>
                    <ul>
                        <li> Votre demande en mariage se fait en haut des cimes d'un arbre grâce à la nuit insolite que vous avez réservé? Trouver une agence de production vidéo qui fera un film souvenir en prise de vue aérienne avec un drone est une super idée non? Et pour le coup assez unique! Comme votre demande!</li>
                        <li> Vous avez réservé une table de restaurant avec un repas exceptionnel pour son anniversaire mais vous auriez voulu pouvoir y rajouter votre touche personnelle? L'intervention du magicien sera le clou du spectacle au moment du gâteau!</li>
                      </ul>
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading5">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapse5" id="transform">
                    Mes favoris restent enregistrés ?
                </button>
              </h2>
              <div id="collapse5" class="accordion-collapse collapse" aria-labelledby="heading5" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Exactement! A partir du moment où vous êtes inscrit, IGOguide vous redonne tout de go ce que vous aviez mis de côté!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading6">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="false" aria-controls="collapse6" id="transform">
                  Quelle est la différence des bons cadeaux IGOguide avec ce qui existe déjà?
                </button>
              </h2>
              <div id="collapse6" class="accordion-collapse collapse" aria-labelledby="heading6" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Vous pourriez être surpris des possibilités qui vont s'ouvrir à vous! IGOguide vous les dévoilera incessamment sous peu!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading7">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded="false" aria-controls="collapse7" id="transform">
                   J'ai vu que l'on pouvait offrir des bons cadeaux?
                </button>
              </h2>
              <div id="collapse7" class="accordion-collapse collapse" aria-labelledby="heading7" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    C'est pour bientôt ! Mais IGOguide n'a pas tout à fait fini sa petite mixture. Il veut que tout soit parfait donc cela prendra encore un peu de temps... Vous pourrez les acheter sur IGOguide.com et les professionnels toutes catégories confondues participants du réseau "bons cadeaux IGOguide" pourront accepter le bénéficiaire dans son établissement ou à son activité.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading8">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded="false" aria-controls="collapse8" id="transform">
                    Si je souhaite communiquer une bonne adresse, comment faire?
                </button>
              </h2>
              <div id="collapse8" class="accordion-collapse collapse" aria-labelledby="heading8" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Rien de plus simple! Ecrivez à IGOguide <a href="contact@igoguide.com">contact@igoguide.com</a> et celui-ci s'empressera de regarder ce que vous lui avez concocté!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading9">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse9" aria-expanded="false" aria-controls="collapse9" id="transform">
                  IGOguide est GRATUIT pour tout le monde, particuliers et professionnels, comment est-ce possible ?
                </button>
              </h2>
              <div id="collapse9" class="accordion-collapse collapse" aria-labelledby="heading9" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    "L'union fait la force" voici l'adage qu'aurait pu choisir IGOguide ! <br>
                    Et/ou "Plus on est de fous, plus on rit " ! IGOguide met en avant les interactions des catégories qu'il propose. Il faut donc que tout le monde y soit et que chacun y trouve son bonheur!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading10">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse10" aria-expanded="false" aria-controls="collapse10" id="transform">
                    Puisque c'est GRATUIT, puis-je ajouter ma fiche en tant que professionnel ?
                </button>
              </h2>
              <div id="collapse10" class="accordion-collapse collapse" aria-labelledby="heading10" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Mais bien sûr ! Rien de plus simple !!! Vous vous inscrivez en tant que professionnel depuis “L’Espace Pro” et vous remplissez votre fiche. Pas d'inquiétude, elle est très simple et facile. Vous serez guidé pas-à-pas. 5 minutes montre en main suffisent!
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="heading11">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse11" aria-expanded="false" aria-controls="collapse11" id="transform">
                    Comment ça marche? Réaliser ses rêves n'a jamais été aussi simple!
                </button>
              </h2>
              <div id="collapse11" class="accordion-collapse collapse" aria-labelledby="heading11" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <ul>
                        <li> Choisissez votre établissement ou votre activité </li>
                        <li> Regardez s'ils correspondent à vos autres envies qui se trouvent autour grâce à la carte interactive!</li>
                        <li> Contactez-les grâce à leurs fiches de renseignements</li>
                      </ul>
                </div>
              </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="heading12">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse12" aria-expanded="false" aria-controls="collapse12" id="transform">
                    Je suis professionnel: comment vont se dérouler les 2 mois d'inscription GRATUITS ?
                  </button>
                </h2>
                <div id="collapse12" class="accordion-collapse collapse" aria-labelledby="heading12" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Sans aucun problème ! <br>
                    Vous pouvez donc vous inscrire sans engagement. Aucune carte n’est demandée. Vous pourrez ainsi accéder à toutes vos questions en tant que professionnels sans contrepartie !<br>
                    En résumé : vous allez vous enregistrer d'ici quelques minutes et IGOguide se chargera de vous envoyer un e-mail lorsqu'arrivera la fin de cette période pour vous demander si vous souhaitez continuer et prendre un ou plusieurs forfaits pour  <br>
                    Continuer l’aventure  Tout simplement !
                  </div>
                </div>
              </div>
          </div><!-- End Default Accordion Example -->
    
        </div>
      </div>
                            </div>
                        </div>
                   </div>
                </main>
                
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<?php echo base_url()?>publics/dashboard/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="<?php echo base_url()?>publics/dashboard/assets/demo/chart-area-demo.js"></script>
        <script src="<?php echo base_url()?>publics/dashboard/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="<?php echo base_url()?>publics/dashboard/js/datatables-simple-demo.js"></script>
    </body>
</html>
