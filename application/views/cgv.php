<!-- FAQ ! -->
<div class="py-5" style="overflow: hidden; background-color: #fee085; background-color: white; min-height: 700px;">
    <div class="container">
        <div class="row ">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mb-4 entete_row entete_row_primary">CGV</h2>
                    </div>
                </div>
                <div class="row border py-3" style="min-height: 700px; height: 700px">
                    <div class="col-md-3 border-right py-4">
                        <ul id="cgu-list">
                            <?php if (isset($cgv)) : ?>
                                <?php for ($i = 0; $i < count($cgv); $i++) : ?>
                                    <?php if($id == $cgv[$i]->cgv_id): ?>
                                        <a class="" style="color: #51b3c1; font-weight: bold;" href="Home/showCGV/<?= $cgv[$i]->cgv_id; ?>"><?= $cgv[$i]->cgv_entete; ?></a>
                                    <?php else:?>
                                        <a style="" href="<?= base_url() ;?>Home/showCGV/<?= $cgv[$i]->cgv_id; ?>"><?= $cgv[$i]->cgv_entete; ?></a>
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