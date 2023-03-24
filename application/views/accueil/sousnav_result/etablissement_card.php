<?php foreach($etablissements as $card): ?>
    <div class="__card_result" onmouseover="mappingCard(<?= $card->etablissements_latitude ?>,<?= $card->etablissements_longitude ?>)" onmouseleave="clearMappingCard()">
        <div class="__carousel_images">
            <button class="__like">
                <span class="__icon">
                    <i class="fa-regular fa-heart"></i>
                </span>
            </button>

            <div id="carouselImagesAlbum" class="carousel slide" data-ride="carousel">

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="<?= base_url().'Home/detail_result/'.$card->etablissements_id ?>" class="__image">
                            <?php if(gettype($card->etablissements_photo) == "array"):?>
                                <img class="__img" src="<?= base_url().'publics/'.($card->etablissements_photo)[0] ; ?> " alt="First slide">
                            <?php endif ?>
                            
                        </a>
                    </div>
                </div>
                
                <!-- <ol class="carousel-indicators __indicator">
                    <li class='active' data-target="#carouselImagesAlbum" data-slide-to="0" class=""></li>
                    <li data-target="#carouselImagesAlbum" data-slide-to="1"></li>
                    <li data-target="#carouselImagesAlbum" data-slide-to="2"></li>
                    <li data-target="#carouselImagesAlbum" data-slide-to="3" class=""></li>
                    <li data-target="#carouselImagesAlbum" data-slide-to="4"></li>
                    <li data-target="#carouselImagesAlbum" data-slide-to="5"></li>
                </ol> -->

                <!-- <a class=" carousel-control-prev" href="#carouselImagesAlbum" role="button" data-slide="prev">
                    <span class="__icon">
                        <i class="fa-solid fa-angle-left"></i>
                    </span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class=" carousel-control-next" href="#carouselImagesAlbum" role="button" data-slide="next">
                    <span class="__icon">
                        <i class="fa-solid fa-angle-right"></i>
                    </span>
                    <span class="sr-only">Next</span>
                </a> -->
            </div>
        </div>
        <div class="__card_body">
            <a href="#" class="__user">
                <span class="__user_name"><?= $card->users_etablissement ;?></span>
                <img class="__img" src="<?= base_url().'publics/'.$card->users_etablissement_logo; ?>" alt="">
            </a>
            <a class="__body" href="<?= base_url().'Home/detail_result/'.$card->etablissements_id ?>">
                <h2 class="__title">
                    <?= $card->etablissements_nom ?>
                </h2>
                <p class="__localisation">
                    <span class="__icon"><i class="fa-solid fa-location-dot"></i></span>
                    <span class="__location"> <?= $card->etablissements_ville ?>, <?= $card->etablissements_region ?>, <?= $card->etablissements_departement ?>, <?= $card->etablissements_pays ?></span>
                </p>
                <?php if(isset($card->activites->Tarif)): ?>
                <p class="__price">
                    <?= $card->activites->Tarif ?> € par nuit
                </p>
                <?php endif ?>
            </a>
            
            <a href="<?= base_url().'/Home/sousnav_result' ?>" class="__category">
                <div class="__image">
                    <img class="__img_category" src="http://localhost/master-reset/publics/image/Hébergements/icone cabane sur l_eau igoguide.png" alt="">
                </div>
                <p class="__name"><?= $card->sous_categories_nom ?></p>
            </a>
        </div>
    </div>
<?php endforeach ?>

<?php if($pagination->active): ?>
    <div class="__paginations">
        <ul class="pagination">
            <?php if($pagination->page <= 1): ?>
                <li class="page-item disabled">
                    <span class="page-link __control">
                        <i class="fa-solid fa-angle-left"></i>
                    </span>
                </li>
            <?php else: ?>
                <li class="page-item">
                    <a class="page-link __control" href="<?= base_url('home/sousnav_result/' . ($pagination->page - 1)) ?>">
                        <i class="fa-solid fa-angle-left"></i>
                    </a>
                </li>
            <?php endif; ?>

            <?php for($i=1; $i<=$pagination->nbre_page; $i++): ?>
                <li class="page-item <?= $pagination->page === $i ? 'active' : '' ?>"><a class="page-link" href="<?= base_url('home/sousnav_result/'. $i ) ?>"><?= $i ?></a></li>
            <?php endfor; ?>
            
            <?php if($pagination->page >= $pagination->nbre_page): ?>
                <li class="page-item disabled">
                    <span class="page-link __control">
                        <i class="fa-solid fa-angle-right"></i>
                    </span>
                </li>
            <?php else: ?>
                <li class="page-item">
                    <a class="page-link __control" href="<?= base_url('home/sousnav_result/' . ($pagination->page + 1)) ?>">
                        <i class="fa-solid fa-angle-right"></i>
                    </a>
                </li>
            <?php endif; ?>
        </ul>
    </div>
<?php endif ?>


