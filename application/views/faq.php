<!-- FAQ ! -->
<div class="py-5" style="overflow: hidden; background-color: #fee085; background-color: white; min-height: 700px;">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <h2 class="text-center mb-4 entete_row entete_row_primary">FAQ</h2>
                <?php if (isset($faq)) : ?>
                    <?php for ($fi = 0; $fi < count($faq); $fi++) : ?>
                        <button class="accordion"><?= $faq[$fi]->faq_question; ?></button>
                        <div class="panel">
                            <?= $faq[$fi]->faq_contenu; ?>
                        </div>
                    <?php endfor; ?>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>