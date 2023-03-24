<div class="__profil_page">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                <div class="__profil_block">
                    <div class="__profil_user">
                       <div class="__user_image">
                       <img class="__img" src="<?= base_url() ;?>publics/<?= $users_info->users_photo ;?>" alt="" id="image_click">
                        <?= form_open_multipart('Users/modifPhotoUser/'.$_SESSION['users_id'], array('class' => "__form",'id'=> 'submitter')) ;?>
                            <input type="file" name="filePhotoUser" id="myFile" class="d-none">
                        </form>
                       </div> 
                       <div class="__user_info">
                            <p class="__user_identifiant">
                                <?= $users_info->users_email ;?>
                            </p>
                            <!-- <p class="__user_inscrption">Membre depuis Mars 2023</p> -->
                            <p class="__user_like">
                                <span class="__icon"><i class="fa-regular fa-heart"></i></span>
                                <span class="__text">55 favoris</span>
                            </p>
                       </div>
                    </div>

                    <div class="__profil_form">
                        <p class="__profil_title">Modification du profil</p>
                        
                        <!-- <form class="__form" action=""> -->
                            <?= form_open('Users/modifPassUser/'.$_SESSION['users_id'], array('class' => "__form")) ;?>
                            <input class="__input form-control" name="ancien" type="password" placeholder="Ancien mot de passe">
                            <input class="__input form-control" name="new1" type="password" placeholder="Nouveau mot de passe">
                            <input class="__input form-control" name="new2" type="password" placeholder="Confirmer mot de passe">
                            <button class="__btn">Modifier</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>