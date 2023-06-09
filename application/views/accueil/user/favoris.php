<div class="__favoris_page">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                <div class="__favoris_block">
                    <p class="__favoris_title">Favoris</p>
                    
                    <div class="__favoris_result">
                        <?php for ($i=1; $i < 7 ; $i++) : ?>

                            <div class="__card_result">
                                <div class="__carousel_images">
                                    <button class="__like __active">
                                        <span class="__icon">
                                            <i class="fa-regular fa-heart"></i>
                                        </span>
                                    </button>

                                    <div id="carouselImagesAlbum" class="carousel slide" data-ride="carousel">

                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072_640.jpg" alt="First slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704_640.jpg" alt="Second slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2016/10/22/18/52/beach-1761410_960_720.jpg" alt="Third slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122_640.jpg" alt="First slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2017/10/30/14/57/thin-2902686_640.jpg" alt="Second slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2017/12/20/10/48/portugal-3029665_640.jpg" alt="Third slide">
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <ol class="carousel-indicators __indicator">
                                            <li class='active' data-target="#carouselImagesAlbum" data-slide-to="0" class=""></li>
                                            <li data-target="#carouselImagesAlbum" data-slide-to="1"></li>
                                            <li data-target="#carouselImagesAlbum" data-slide-to="2"></li>
                                            <li data-target="#carouselImagesAlbum" data-slide-to="3" class=""></li>
                                            <li data-target="#carouselImagesAlbum" data-slide-to="4"></li>
                                            <li data-target="#carouselImagesAlbum" data-slide-to="5"></li>
                                        </ol>

                                        <a class=" carousel-control-prev" href="#carouselImagesAlbum" role="button" data-slide="prev">
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
                                        </a>
                                    </div>
                                </div>
                                <div class="__card_body">
                                    <a href="#" class="__user">
                                        <span class="__user_name">Alice</span>
                                        <img class="__img" src="https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg" alt="">
                                    </a>
                                    <a class="__body" href="<?= base_url().'/Home/detail_result' ?>">
                                        <h2 class="__title">
                                            Suite familiale tout confort, vue sur Loire.
                                        </h2>
                                        <p class="__localisation">
                                            <span class="__icon"><i class="fa-solid fa-location-dot"></i></span>
                                            <span class="__location"> ville : Argelès-sur-Mer, Region : Occitanie, Departement: Pyrénées-Orientales, Pays: France</span>
                                        </p>
                                        <p class="__price">
                                            1.000 € par nuit
                                        </p>
                                    </a>
                                    
                                    <a href="<?= base_url().'/Home/sousnav_result' ?>" class="__category">
                                        <div class="__image">
                                            <img class="__img_category" src="http://localhost/igoguide/publics/image/Hébergements/icone cabane sur l_eau igoguide.png" alt="">
                                        </div>
                                        <p class="__name">Cabanes sur l'eau</p>
                                    </a>
                                </div>
                            </div>
                        
                            <div class="__card_result">
                                <div class="__carousel_images">
                                    <button class="__like __active">
                                        <span class="__icon">
                                            <i class="fa-regular fa-heart"></i>
                                        </span>
                                    </button>
                                    <div id="carouselImagesAlbum2" class="carousel slide" data-ride="carousel">

                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742_640.jpg" alt="First slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2016/10/21/14/50/plouzane-1758197_640.jpg" alt="Second slide">
                                                </a>
                                            </div>
                                            <div class="carousel-item">
                                                <a href="<?= base_url().'/Home/detail_result' ?>" class="__image">
                                                    <img class="__img" src="https://cdn.pixabay.com/photo/2014/03/03/16/12/village-279013_960_720.jpg" alt="Third slide">
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <ol class="carousel-indicators __indicator">
                                            <li class='active' data-target="#carouselImagesAlbum2" data-slide-to="0" class=""></li>
                                            <li data-target="#carouselImagesAlbum2" data-slide-to="1"></li>
                                            <li data-target="#carouselImagesAlbum2" data-slide-to="2"></li>
                                        </ol>

                                        <a class=" carousel-control-prev" href="#carouselImagesAlbum2" role="button" data-slide="prev">
                                            <span class="__icon">
                                                <i class="fa-solid fa-angle-left"></i>
                                            </span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class=" carousel-control-next" href="#carouselImagesAlbum2" role="button" data-slide="next">
                                            <span class="__icon">
                                                <i class="fa-solid fa-angle-right"></i>
                                            </span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>

                                <div class="__card_body">
                                    <a href="#" class="__user">
                                        <span class="__user_name">Alice</span>
                                        <img class="__img" src="https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg" alt="">
                                    </a>
                                    <a class="__body" href="<?= base_url().'/Home/detail_result' ?>">
                                        <h2 class="__title">
                                            Suite familiale tout confort, vue sur Loire.
                                        </h2>
                                        <p class="__localisation">
                                            <span class="__icon"><i class="fa-solid fa-location-dot"></i></span>
                                            <span class="__location"> ville : Argelès-sur-Mer, Region : Occitanie, Departement: Pyrénées-Orientales, Pays: France</span>
                                        </p>
                                        <p class="__price">
                                            1.000 € par nuit
                                        </p>
                                    </a>
                                    <a href="<?= base_url().'/Home/sousnav_result' ?>" class="__category">
                                        <div class="__image">
                                            <img class="__img_category" src="http://localhost/igoguide/publics/image/Hébergements/icone cabane sur l_eau igoguide.png" alt="">
                                        </div>
                                        <p class="__name">Cabanes sur l'eau</p>
                                    </a>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                        
                    <div class="__paginations">
                        <ul class="pagination">
                            <li class="page-item disabled">
                                <a class="page-link __control" href="#">
                                    <i class="fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="page-item "><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item active"><a class="page-link" href="#">10</a></li>
                            <li class="page-item">
                                <a class="page-link __control" href="#">
                                    <i class="fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>