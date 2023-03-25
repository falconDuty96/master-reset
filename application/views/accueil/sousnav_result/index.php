<div class="__sousnav_result">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-12">

                <p class="__title_result"><span class="__title_result" id="nbre_page">0</span> Resultats trouvés par Igoguide pour "<?php echo urldecode($option) ;?>"</p>
                
                <div class="__result">
                    <div class="__result_left">
                        <div class="__block_left" id="etablissements-card">
                            <span></span>
                            <div class="d-flex justify-content-center align-items-center" style="min-height: 60vh;">
                                <img src="<?= base_url("publics/image/loader.gif") ?>" width="100px">
                            </div>
                            <span></span>

                        </div> 
                        <button type="button" class="__result_btn_responsive" onclick="seeCart(event)">
                            <span class="__text">Afficher la carte</span>
                            <span class="__icon">
                                <i class="fa-solid fa-map"></i>
                            </span>
                        </button>
                    </div>
                    
                    <div class="__result_right">
                        <button type="button" class="__result_btn_responsive" onclick="seeList(event)">
                            <span class="__text">Afficher la liste</span>
                            <span class="__icon">
                                <i class="fa-solid fa-list"></i>
                            </span>
                        </button>
                        <div id="maps" data-baseurl="<?= base_url() ?>" data-switcher="" data-page="<?= $page ?>" data-type="<?= $type ?>" data-option="<?= $option ?>"></div>
                    </div>

                </div>

                

            </div>
        </div>
    </div>
</div>

