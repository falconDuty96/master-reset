<div class="__details_page">
    <div class="__details_grid">
        <div class="__details_sidebar">
            <div class="__user_reseau">
                <a href="#" class="__link __mail">
                    <span class="__icon"><i class="fa-regular fa-envelope"></i></span>
                    <span class="__info" id="email-showing"></span>
                </a>

                <a href="#" class="__link __phone">
                    <span class="__icon"><i class="fa-solid fa-phone"></i></span>
                    <span class="__info" id="telephone_showing">+33 6 71 55 28 67</span>
                </a>

                <a href="" id="siteweb_showing" class="__link __web">
                    <span class="__icon"><i class="fa-solid fa-globe"></i></span>
                    <span class="__info">Siteweb</span>
                </a>
                
                <a href="" id="fb_showing" class="__link __facebook">
                    <span class="__icon"><i class="fa-brands fa-facebook-f"></i></span>
                    <span class="__info">Facebook</span>
                </a>
                
                <a href="" id="insta_showing" class="__link __insta">
                    <span class="__icon"><i class="fa-brands fa-instagram"></i></span>
                    <span class="__info">Instagram</span>
                </a>
                
            </div>
            <img class="__reseau_image" src="<?= base_url().'publics/image/back.png' ?>" alt="">
        </div>

        <div class="__details_big_block">
            
            <div class="__banner">
                <h1 class="__title" id="entete_showing"></h1>
                <div class="__another">
                    <p class="__like">
                        <span class="__icon"><i class="fa-regular fa-heart"></i></span>
                        <span class="__nombre">999</span>
                    </p>
                    <p class="__localisation">
                        <span class="__icon"><i class="fa-solid fa-magnifying-glass-location"></i></span>
                        <span class="__text">49 Rue de Verdun, Sallertaine, France</span>
                    </p>
                </div>

                <div class="__actions">
                    <button type="button" class="__add_like">
                        <span class="__icon"><i class="fa-regular fa-heart"></i></span>
                        <span class="__text">Ajouté aux favoris</span>
                    </button>
                </div>

                <div class="__gallery __gallery_5">
                    <div class="__images_1">
                        <img class="__img" src="https://cdn.pixabay.com/photo/2017/12/16/22/22/bora-bora-3023437_640.jpg" alt="">
                    </div>
                    <div class="__images_2">
                        <img class="__img" src="https://cdn.pixabay.com/photo/2015/04/01/01/56/bora-bora-701862_640.jpg" alt="">
                    </div>
                    <div class="__images_3">
                        <img class="__img" src="https://cdn.pixabay.com/photo/2017/07/26/19/42/bora-bora-2542917_640.jpg" alt="">
                    </div>
                    <div class="__images_4">
                        <img class="__img" src="https://cdn.pixabay.com/photo/2020/11/28/02/17/lagoon-5783445_640.jpg" alt="">
                    </div>
                    <div class="__images_5">
                        <img class="__img" src="https://cdn.pixabay.com/photo/2015/04/01/01/44/bora-bora-701844_640.jpg" alt="">
                    </div>
                </div>
            </div>

            <div class="__details">

                <div class="__details_user">
                    <img class="__image" src="" id="image_showing" alt="">
                </div>

                <div class="__details_text">
                    <p class="__title_details">
                        <span class="__category" id="categorie_showing">
                            
                        </span>
                        <span class="__separator"><i class="fa-solid fa-circle"></i></span>
                        <span class="__user" id="sous_categorie_showing">
                            
                        </span>
                        <span class="__separator"><i class="fa-solid fa-circle"></i></span>
                        <span class="__user" id="etablissements_nom_showing">
                            
                        </span>
                    </p>

                    <p class="__description" id="presentation_showing">
                        
                    </p>
                </div>
                
                <div class="__services_block">
                    <div class="__services">
                        <p class="__services_title">Informations utiles</p>

                        <p class="__services_subtitle">Informations sur les services inclus</p>

                        <ul class="__list" id="list_showing">
                            <!-- <li class="__service">Nombre de couchage : 5</li>
                            <li class="__service">Age minimum : 2</li>
                            <li class="__service">Capacité : 100</li>
                            <li class="__service">Salle de bain et W.C : 10</li>
                            <li class="__service">Bain à remous</li>
                            <li class="__service">Sauna</li>
                            <li class="__service">Cuisines</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li>
                            <li class="__service">Petit déjeuner inclus</li> -->
                        </ul>
                        
                        <p class="__services_subtitle">Informations sur la localisation</p>
                        <p class="__localisation">
                            <span class="__icon"><i class="fa-solid fa-location-dot"></i></span>
                            <span class="__text"><span id="ville_localisation_showing"></span> <span id="cp_localisation_showing"></span>, <span id="region_localisation_showing"></span>, <span id="departement_localisation_showing"></span>, <span id="pays_localisation_showing"></span></span>
                        </p>
                    </div>
                    
                    <div class="__contact">
                        <p class="__contact_title">Nous contacter</p>
                        <form class="__form">
                            <div class="__form_group">
                                <input class="form-control __input" placeholder="Nom" type="text">
                                <input class="form-control __input" placeholder="E-mail" type="text">
                            </div>
                            <input placeholder="Objets" class="form-control __input" type="text">
                            <textarea placeholder="Votre message" class="form-control __input" name="" id="" cols="30" rows="10"></textarea>
                            <button class="__btn">Envoyer</button>
                        </form>

                    </div>
                </div>

                <div class="__card_details">
                    <a class="__link" href="#">Voulez-vous en savoir plus sur la région ?</a>
                    <div id="maps" class="__maps" id="maps" data-baseurl="<?= base_url() ?>" data-switcher="showing" data-id="<?= $id ?>"></div>
                </div>
            </div>

        </div>
    </div>
</div>
