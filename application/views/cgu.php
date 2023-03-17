<!-- FAQ ! -->
<div class="py-5" style="overflow: hidden; background-color: #fee085; background-color: white; min-height: 700px;">
    <div class="container">
        <div class="row ">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mb-4 entete_row entete_row_primary">CGU</h2>
                    </div>
                </div>
                <div class="row border py-3" style="min-height: 700px; height: 700px">
                    <div class="col-md-3 border-right py-4">
                        <ul id="cgu-list">
                            <?php if (isset($cgu)) : ?>
                                <?php for ($i = 0; $i < count($cgu); $i++) : ?>
                                    <?php if($id == $cgu[$i]->cgu_id): ?>
                                        <a class="" style="color: #51b3c1; font-weight: bold;" href="Home/showCGU/<?= $cgu[$i]->cgu_id; ?>"><?= $cgu[$i]->cgu_entete; ?></a>
                                    <?php else:?>
                                        <a style="" href="<?= base_url() ;?>Home/showCGU/<?= $cgu[$i]->cgu_id; ?>"><?= $cgu[$i]->cgu_entete; ?></a>
                                    <?php endif ;?>
                                    
                                <?php endfor; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="col-md-9 p-4">
                        <?php if (isset($resultat)) : ?>
                            <?= $resultat ; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>