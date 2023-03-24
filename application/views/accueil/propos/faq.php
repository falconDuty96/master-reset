<div class="__faq_block" style="min-height:500px ;">
    <div class='container'>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">

                <p class="__title">FAQ</p>
                <div id="accordions">
                    <?php if (isset($faq)) : ?>
                        <?php for ($fi = 0; $fi < count($faq); $fi++) : ?>
                    <div class="card __faq_card">
                        <div class="card-header __faq_header" id="headingFaq1">
                            <button class="__btn" data-toggle="collapse" data-target="#FaqCollapse<?= $fi ;?>" aria-expanded="true" aria-controls="collapseOne">
                                <span class="__text"> 
                                <?= $faq[$fi]->faq_question; ?>
                                </span>  
                                <span class="__icon"><i class="fa-solid fa-angle-down"></i></span> 
                            </button>
                        </div>

                        <div id="FaqCollapse<?= $fi ;?>" class="collapse show" aria-labelledby="headingFaq<?= $fi ;?>" data-parent="#accordions">
                            <div class="card-body __faq_body">
                            <?= $faq[$fi]->faq_contenu; ?>
                            </div>
                        </div>
                    </div>
                    <?php endfor; ?>
                <?php endif; ?>

                    
                </div>

            </div>
        </div>
    </div>
</div>