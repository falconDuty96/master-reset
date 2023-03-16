
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
                        <a class="nav-link activate" href="<?php echo base_url() ?>Dashboard/cgu">
                            <div class="sb-nav-link-icon"><i class="fas fa-ruler"></i></div>
                            CGU
                        </a>
                        <a class="nav-link" href="<?php echo base_url() ?>Dashboard/faq">
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
                            <div class="card">
        <div class="card-body">
            <h5 class="card-title">Conditions Générales d'Utilisation</h5>
  
            <!-- Default Accordion -->
            <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Informations relatives à la société exploitant le site
                  </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <strong>Identification de la société exploitant le Site.</strong><br>
                    Le site internet www.igoguide.com est édité par la société IGOgroup, Société par actions simplifiées, immatriculée au RCS de Bordeaux, sous le n°889371142, dont le siège social est 9 rue de Condé, bureau 3,  33000 Bordeaux. 
                    N° de TVA intracommunautaire : FR10889371142
                    Email : infos@igoguide.com
                    Hébergeur : OVH, société par action simplifiée au capital de 10 069 020 €uros, immatriculée au RCS Lille Métropole 424 761 419 0004, N° TVA : FR 22 424 761 419 dont le siège social est  2 rue Kellermann – 59100 Roubaix – France 
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Rappel pour l'utilisation du site IGOguide.com
                  </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    La société IGOgroup est propriétaire du site internet www.igoguide.com (ci-après, la « Plateforme IGOguide » ).
                    Les présentes Conditions générales d’utilisation ont pour objet de définir les conditions d’utilisation de la Plateforme IGOguide.
                    L’accès, la consultation et l’utilisation de la Plateforme IGOguide valent acceptation sans réserve des présentes Conditions Générales d’Utilisation, dont les usagers déclarent avoir eu connaissance par le biais de sa lecture disponible en libre accès sur le site.
                    IGOguide se réserve le droit de les mettre à jour et de les modifier à tout moment. La version applicable est celle en vigueur à la date d’utilisation de la plateforme.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE1: QU’EST CE QUE LA PLATEFORME IGOguide?
                  </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <strong>1.1 Description générale</strong><br> La Plateforme IGOguide est un outil numérique permettant de mettre en contact des particuliers (les « Utilisateurs » ) avec des professionnels (les « Partenaires » ) d’hébergements, de bars, de la restauration, de balades et d’activités tels que des ateliers, stages ou encore d’activités ludiques, éducatives, de bien-être, de shopping  et ceux désireux de proposer leurs services. Mais les professionnels peuvent  simplement se présenter afin de se faire connaître de manière facile et interactive.
                    La Plateforme IGOguide est donc une simple interface de mise en relation, et ne revêt en aucun cas la qualité d’agent ou de mandataire des Utilisateurs ou des Partenaires.
                    <strong><br>1.2 Fonctionnement de la plateforme IGOguide </strong><br>La Plateforme IGOguide est une plateforme d’assistance à la recherche de lieux “pour créer son échappée belle” et uniquement d’assistance. Elle n’est en aucun cas tenue d’une quelconque obligation de résultat quant à la conclusion d’un contrat entre les Utilisateurs et les Partenaires.
                    En fonction des critères de recherche saisis, elle propose le profil de Partenaires aux Utilisateurs, qui sont libres d’accepter ou de refuser de continuer d’utiliser les informations reçues par l’intermédiaire de la Plateforme IGOguide.
                    L’utilisation des services du partenaire par l’Utilisateur, quelle que soit sa nature, et la négociation de ses dispositions relèvent de leur entière responsabilité, comme détaillé à l’article 3 des présentes.
                    La société IGOgroup ne pourra recueillir aucune des conditions contractuelles définies entre l’utilisateur et le partenaire, étant souligné qu’elles ne sont en aucune façon négociées sur la Plateforme IGOguide. La société IGOgroup ne peut engager sa responsabilité de ce chef, n’ayant pas la qualité d’agent ou de mandataire dans la relation contractuelle créée.
                    L’Utilisateur réalise sa mission auprès du Partenaire, sous son entière responsabilité. La Plateforme IGOguide ne sera en aucun cas responsable des défauts d’exécution contractuelle qui pourraient être imputés à l’Utilisateur ou au Partenaire.
                    L’Utilisateur et le Partenaire engageront ainsi leur responsabilité pour toutes les conséquences dommageables résultant des actions, omissions, fautes, erreurs, défaillances et négligences qu’ils commettraient au titre de chaque contrat. En aucun cas, ils ne sauraient imputer ou transférer toute ou partie de cette responsabilité à la Plateforme IGOguide.
                    <strong><br>1.3. Publication des annonces </strong><br>Le Partenaire est invité à déposer des annonces honnêtes, simples et respectueuses, sans sur renchérissement de termes élogieux, afin de permettre à la plateforme IGOguide d’avoir une unité dans ses annonces proposées.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading4">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse4" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 2: LES INSCRIPTIONS DES UTILISATEURS ET DES PARTENAIRES
                  </button>
                </h2>
                <div id="collapse4" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <strong>2.1. Inscription de l’Utilisateur</strong><br>
                    <strong>2.1.1. Création d’un compte</strong><br>Pour accéder aux services de la Plateforme IGOguide, l’”Utilisateur” peut librement l’utiliser. S’il souhaite enregistrer des favoris et y revenir, il doit créer un compte individuel par le biais d’un formulaire d’inscription en ligne, en renseignant ses noms, prénoms, email et doit choisir un mot de passe. La création et l’utilisation de ce compte sont placées sous l’entière responsabilité de l’”Utilisateur”, suivant modalités prévues à l’article 4 des présentes.
                    Ces informations sont transmises à la société IGOgroup après validation par l’Utilisateur et acceptation expresse des présentes Conditions générales d’Utilisation.
                    <br><strong>2.1.1.1 Gratuité des services pour les Utilisateurs</strong><br>L’accès à la Plateforme IGOguide et l’utilisation de ses services sont gratuits pour les Utilisateurs. Les “Utilisateurs” peuvent ainsi créer leur compte, compléter leur profil et entrer en contact avec les “Partenaires”, sans aucune contrepartie financière.
                    <br><strong>2.2. Inscription du Partenaire</strong><br>L’inscription du “Partenaire” est soumise aux CGV afin de valider son inscription. Il pourra accéder à ces CGV à toute heure depuis son tableau de bord.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading5">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse5" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 3: OBLIGATIONS ET RESPONSABILITES DE LA PLATEFORME IGOguide
                  </button>
                </h2>
                <div id="collapse5" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <strong>3.1. Services proposés</strong><br> La Plateforme IGOguide héberge les annonces générées par les “Partenaires”.
                    En utilisation libre ou par l’intermédiaire de son compte, l’Utilisateur a la possibilité de :
                    <ul>
                      <li> choisir une des catégories et sous-catégories référençant les “Partenaires” afin d’en choisir la prestation recherchée</li>
                      <li> bénéficier d’un outil sous forme de carte interactive afin de visualiser sur une zone géographique toutes les prestations proposées par les “Partenaires”</li>
                      <li> consulter le listing des “Partenaires” dont les services correspondent à la recherche, avec accès à leurs coordonnées.</li>
                      <li> La plateforme IGOguide fera ses meilleurs efforts pour transmettre une plateforme complète et pratique à l’utilisation.</li>
                      <li> La société IGOgroup s’engage à fournir ses services de mise en relation avec diligence et selon les règles de l’art, étant précisé qu’il pèse sur la société IGOgroup une obligation de moyens, à l’exclusion de toute obligation de résultat quant à la conclusion d’un contrat ou à la possibilité d’une utilisation quelconque des services du Partenaire, ce que les Utilisateurs et les Partenaires reconnaissent et acceptent expressément.</li>
                    </ul>
                    <strong>3.2. Accessibilité de la Plateforme</strong><br>La société IGOgroup s’efforce de rendre ses services sur la platefome IGOguide accessibles 24 heures/24 et 7 jours/7. La société IGOgroup se réserve le droit, sans préavis ni indemnité, de fermer ou restreindre temporairement l’accès à ses services, aux fins d’effectuer toute opération de maintenance ou de mise à jour.
                    Afin d’assurer le bon fonctionnement de ses services, la société IGOgroup se réserve le droit de modifier la structure, le format et le contenu de sa plateforme et de ses services.
                    <br><strong>3.3. Limitation de responsabilité</strong><br>Les “Utilisateurs” et les “Partenaires” sont des parties indépendantes, chacune agissant en son nom personnel et pour son propre compte.
                    La société IGOgroup ne procède à aucune vérification quelconque quant à l’exactitude et à la véracité des informations communiquées par les “Utilisateurs” et les “Partenaires”, ce qu’ils reconnaissent expressément. 
                    A ce titre, la société IGOgroup ne procède à aucune vérification quant à la régularité de leur situation administrative, fiscale ou pénale, et ne peut à ce titre garantir aux “Utilisateurs” que les “Partenaires” disposent des documents administratifs et sociaux nécessaires leur permettant d’exercer une activité salariée ou non salariée en France. La responsabilité de la société IGOgroup ne pourra être engagée de ce chef.
                    La société IGOgroup ne conclut aucun contrat au nom et/ou pour le compte d’un “Partenaire” ou d’un “Utilisateur”, ces derniers contractant si nécessaire directement entre eux et en dehors de la Plateforme IGOguide.
                    En conséquence, la société IGOgroup ne peut en aucun cas être considérée comme agent ou mandant d’un “Utilisateur” ou d’un “Partenaire”.
                    N’étant pas partie aux contrats si nécessaire qui seraient conclus entre les “Partenaires” et les “Utilisateurs”, la société IGOgroup ne saurait en aucun cas voir sa responsabilité engagée en cas de difficultés pouvant intervenir lors de la conclusion ou de l’exécution de ces contrats, ni être partie à quelque litige que ce soit entre les “Utilisateurs” et les “Partenaires”, à raison de garanties, déclarations ou obligations quelconques auxquelles les Utilisateurs et les Partenaires seraient tenus. 
                    Dans ce cadre, les contrats éventuellement conclus par les “Utilisateurs” devenus des visiteurs de l'établissement concerné le sont directement avec lesdits “Partenaires”, dans les environnements propres de ces derniers et sous leurs responsabilités exclusives. L’”Utilisateur” et le “Partenaire” engageront ainsi leur responsabilité pour toutes les conséquences dommageables résultant des actions, omissions, fautes, erreurs, défaillances et négligences qu’ils commettraient au titre de chaque contrat. En aucun cas, ils ne sauraient imputer ou transférer toute ou partie de cette responsabilité au site internet igoguide.com Plus généralement, la société IGOgroup ne pourra être tenue responsable d’un préjudice survenu à l’occasion de l’exécution de ces contrats, quelque soit sa nature (personnel, physique, matériel, moral ou autre). Aucune réclamation ne sera acceptée à ce titre.
                    Compte tenu de ce qui précède, les “Utilisateurs” comprennent et acceptent que toutes revendications relatives à la conclusion ou à l’exécution des contrats conclus entre eux et nos “Partenaires”, à toutes informations précontractuelles (en ce compris celles visées aux articles L.221-5, L.221-6, D.111-10 et D.111-11 du Code de la Consommation), paiements, garanties, règlements de litiges, et plus généralement tous droits dont les “Utilisateurs” sont titulaires en leur qualité de consommateurs, ne peuvent être exercés qu’à l’encontre des tiers concernés, la plateforme igoguide.com n’étant pas juridiquement partie aux contrats conclus directement entre eux.
                    L’”Utilisateur” réalise donc sa mission auprès du “Partenaire”, sous son entière responsabilité. Le site internet www.igoguide.com édité par la société IGOgroup ne sera en aucun cas responsable des défauts d’exécution contractuelle qui pourraient être imputés à l’”Utilisateur” ou au “Partenaire”.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse6" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 4: OBLIGATIONS ET RESPONSABILITES DE L’UTILISATEUR
                  </button>
                </h2>
                <div id="collapse6" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    L’”Utilisateur” atteste être une personne physique, disposant de la pleine capacité juridique pour s’engager au titre des présentes et pour utiliser les services d’un “Partenaire”.
                    L’”Utilisateur” garantit que les informations communiquées à la société IGOgroup sont exactes, sincères et exhaustives et s’engage à les mettre à jour sans délai en cas de changement de situation.
                    Le compte de l’”Utilisateur” est strictement personnel. L’identifiant et le mot de passe doivent être gardés strictement confidentiels par l’”Utilisateur” et sont placés sous son entière responsabilité. Toute action effectuée depuis le compte de l’”Utilisateur” est réputée émaner de sa personne. Si l’”Utilisateur” a connaissance d’une utilisation non autorisée de son identifiant, de son mot de passe ou de son compte, il lui appartient d’en informer immédiatement la société IGOgroup en écrivant à l’adresse suivante : infos@igoguide.com
                    Le compte de l’”Utilisateur” n’est aucunement transférable. Chaque “Utilisateur” doit s’inscrire avec un seul et unique compte. Il n’est pas autorisé à créer plusieurs profils. Le cas échéant, la société IGOgroup se réserve le droit, sans avoir à fournir de motifs, de supprimer les profils additionnels et de bloquer l’accès au site aux “Utilisateurs” ayant créé plusieurs comptes.
                    La société IGOgroup se réserve le droit d’exclure tout “Utilisateur” inscrit sur la Plateforme et d’initier toute action en justice si elle s’estime victime d’un préjudice quelconque à raison de tels agissements, et en particulier en cas d’utilisation à des fins commerciales ou de prospection de sa banque de données.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse7" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 5: OBLIGATIONS ET RESPONSABILITES DE IGOgroup
                  </button>
                </h2>
                <div id="collapse7" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    IGOgroup ne pourra être tenue responsable des dommages directs et indirects causés au matériel du visiteur, lors de l’accès au site, et résultant soit de l’utilisation d’un matériel, soit de l’apparition d’un bug ou d’une incompatibilité.
                    IGOgroup ne pourra également être tenu responsable des dommages indirects consécutifs à l’utilisation du site.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse8" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 6: DROIT DE RETRACTATION 
                  </button>
                </h2>
                <div id="collapse8" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Aucun contrat n’est conclu entre un “Utilisateur” et la plateforme IGOguide édité par la société IGOgroup. Le site étant en libre accès aux “Utilisateurs” et sans paiement quelconque.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse9" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 7: FORCE MAJEURE
                  </button>
                </h2>
                <div id="collapse9" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    Aucune responsabilité ne pourra être recherchée en cas d’inexécution des présentes pour cas de force majeure au sens de l’article 1218 et suivant du Code civil.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse10" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 8: PROPRIETE INTELLECTUELLE
                  </button>
                </h2>
                <div id="collapse10" class="accordion-collapse collapse" aria-labelledby="heading10" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    L’ensemble des éléments présents sur la Plateforme IGOguide, en particulier, les programmes informatiques, les textes, les images, les vidéos, les photographies, les marques, les logos, les noms de domaine, relèvent de la propriété exclusive de la société IGOgroup ou en détient les droits d’usage
                    L’extraction, la reproduction ou la représentation, intégrale ou partielle, de la Plateforme Igoguide ou d’un des éléments qui la composent est formellement interdite. Toute exploitation non autorisée du site ou de l’un de ses éléments sera considérée comme constitutive d’une contrefaçon et poursuivie conformément aux dispositions des articles L. 335-2 et suivants du Code de Propriété Intellectuelle.
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="heading6">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse11" aria-expanded="false" aria-controls="collapseThree">
                    ARTICLE 9: PROTECTION  DES DONNEES PERSONNELLES
                  </button>
                </h2>
                <div id="collapse11" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <br><strong>9.1. Définition</strong><br>Une donnée à caractère personnel consiste en toute information se rapportant à une personne physique identifiée ou identifiable.
                    Les présentes Conditions Générales d’Utilisation sont établies conformément aux dispositions légales relatives à l’informatique, aux fichiers et aux libertés et, notamment, au Règlement Général européen sur la Protection des Données (RGPD) du 27 avril 2016.
                    <br><strong>9.2 Le droit applicable</strong><br>Le règlement européen 2016/679 du Parlement européen et du Conseil, et notamment l'article 13 ;
                    La Loi n° 2004-575 du 21 juin 2004 pour la confiance dans l'économie numérique et notamment l'article 6 ;
                    La Loi n° 78-17 du 6 janvier 1978 relative à l'informatique, aux fichiers et aux libertés modifiée par la LOI n° 2018-493 du 20 juin 2018 relative à la protection des données personnelles pour les questions de traitement de données à caractère personnel.
                    Les données à caractère personnelles des “Partenaires” et “Utilisateurs” recueillies via les formulaires présents sur “notre Site”
                    IGOgroup s’engage à respecter la vie privée des “Partenaires” et ‘Utilisateurs” de “igoguide.com” et de garantir la confidentialité des données personnelles recueillies. Celles-ci résultent de la communication volontaire d’informations via les formulaires présents sur “igoguide.com”. Certaines données, qui doivent être fournies obligatoirement, sont identifiées visuellement. Elle concerne uniquement le nom, prénom et email. Les données recueillies, à la demande d’IGOgroup, le responsable du traitement, font l’objet d’un traitement informatique destiné à la gestion de fichiers clients et prospects.
                    Les données des “Partenaires” sont nécessaires à l’inscription sur “igoguide.com”, à la publication des annonces sur “igoguide.com”, à la gestion commerciale et à la qualité de nos services. Les données collectées sont confidentielles et ne font pas l’objet de transmission à des tiers, sauf en cas de réquisition judiciaire ou de demande par une autorité habilitée.
                    Les données des “Utilisateurs” ne sont pas nécessaires pour pouvoir entrer en contact avec un “Partenaire” et ne sont pas utilisées à des fins de prospection. Les données collectées pour permettre à l’”Utilisateur” de s’inscrire afin de conserver ses “favoris” sont confidentielles et ne font pas l’objet de transmission à des tiers, sauf en cas de réquisition judiciaire ou de demande par une autorité habilitée, ou en cas d'accord de transmission exprimé par les « Utilisateurs » pour un besoin particulier de la plateforme.
                    Conformément aux articles 38 et suivants de la loi n° 78-17 du 6 janvier 1978 modifiée par la loi du 6 août 2004 relative à l’informatique, aux fichiers et aux libertés, toute personne peut obtenir communication et, le cas échéant, modification, rectification ou suppression des informations le concernant, en s’adressant à IGOgroup, 9 rue de Condé, bureau 3, 33000 Bordeaux, France.
                    Conformément à l’article 92 du décret N°2005-1309 du 20 octobre 2005, les demandes doivent être signées et accompagnées de la photocopie d’un titre d’identité portant la signature du titulaire. Les demandes doivent également préciser l’adresse à laquelle doit parvenir la réponse.
                    Conformément à l’article 94 du décret N°2005-1309 du 20 octobre 2005, le responsable du traitement répond à la demande présentée par l’intéressé dans le délai de 2 mois suivant sa réception. Si la demande est imprécise ou ne comporte pas tous les éléments, le responsable du traitement invite l’intéressé à les lui fournir.
                    <br><strong>9.3 Les cookies</strong><br>Pour rappel: IGOguide.com propose à l’”Utilisateur” de naviguer gratuitement sur sa plateforme. L’inscription demandée n’est pas obligatoire et ne vise qu’à une seule finalité: pouvoir enregistrer les établissements dans des “favoris” afin de les retrouver lors d’une navigation ultérieure.
                    <br><strong>9.3.1 Les données des “Utilisateurs”, recueillies automatiquement via des cookies
                      Des données recueillies automatiquement sont analysées et des statistiques sont établies.</strong><br>Cela permet à IGOguide d’améliorer la fonctionnalité de la plateforme et d’adapter le contenu aux besoins.
                      Lorsque les utilisateurs naviguent sur le site igoguide.com, certaines données peuvent être recueillies automatiquement. Cette navigation est susceptible de provoquer l’installation de cookie(s) sur l’ordinateur de l’utilisateur. Un cookie est un fichier de petite taille, qui ne permet pas l’identification de l’utilisateur, mais qui enregistre des informations relatives à la navigation d’un ordinateur sur un site.
                      Depuis l’ordonnance du 24 août 2011 relative aux communications électroniques, (avec deux directives du 25 novembre 2009 appelées le “paquet télécom”), l'Utilisateur doit être informé de l’existence des cookies.
                      Cependant, il existe deux exceptions à l’obligation d’obtenir l’autorisation des “Utilisateurs”. Il s’agit des cookies qui ont pour finalité exclusive de permettre ou faciliter la communication par voie électronique et des cookies qui sont strictement nécessaires à la fourniture d’un service expressément demandé par l’internaute (comme les cookies permettant de créer vos “favoris”). IGOguide.com est dans ce cas de figure pour les “Utilisateurs”
                    <br><strong>Mais nous vous rappelons les faits afin de vous rassurer:</strong><br>
                    <br><strong>Qu'est-ce qu'un cookie ?</strong><br>Un cookie est un témoin de connexion, qui peut être utilisé pour une authentification, une session ou pour stocker une information spécifique sur “l’Utilisateur”. L’usage de cookies nous permet de vous proposer un site toujours plus adapté à vos envies.  Les données recueillies peuvent concerner les adresses IP des “Utilisateurs”, les pages Internet, les publicités visités, les liens sur lesquels les “Utilisateurs” ont cliqué, la recherche effectuée, le type de navigateur et toute information facilitant la navigation.
                    Sachez que les cookies sont limités dans le temps. Ils peuvent s’arrêter lorsque la durée définie est terminée ou lorsque l’utilisateur a fini sa session.
                    Comment et pourquoi igoguide.com utilise les cookies ?
                    Certains cookies permettent de faciliter la navigation sur la plateforme igoguide.com. Ce sont les cookies techniques. D’autres recueillent des données de trafic anonymes pour des fins analytiques.
                    Ils facilitent l'utilisation de la plateforme, notamment entre autre grâce à la mémorisation de données de formulaires mais ils permettent aussi l'affichage du site igoguide.com suivant les paramètres du terminal de l'Utilisateur. Ils nous permettent aussi d'établir des statistiques sur la fréquentation et l’utilisation du site. Et enfin, ils permettent de partager nos informations sur divers supports, dont les réseaux sociaux par différents moyens sur le site.
                    <br><strong>Comment contrôler les cookies?</strong><br>Il faut comprendre que la désactivation de l’ensemble des cookies peut impacter de façon négative vos utilisations sur un ensemble de sites internet. Mais vous pouvez le faire sur tous vos navigateurs.
                    En cas de questions, n’hésitez pas à consulter le site de la CNIL (Commission nationale de l’informatique et des libertés).
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
