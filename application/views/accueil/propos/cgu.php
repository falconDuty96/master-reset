<div class="__cg_block" style="min-height: 500px">
    <div class='container'>
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 __cg_col">

                <div class="__cg_real_block">
                    <div class="__cg_sidebar">
                        <p class="__title">CGU : Condition Generale d'utilisation </p>
                        <div class="list-group __cg_list" id="list-tab" role="tablist">
                            <?php for ($i = 0; $i < count($cgu); $i++) : ?>
                                <?php if($i == 0): ?>
                                    
                                    <a class="__cg_items list-group-item list-group-item-action active" id="list-<?= $cgu[$i]->cgu_id ;?>-list" data-toggle="list" href="#list-<?= $cgu[$i]->cgu_id ;?>" role="tab" aria-controls="<?= $cgu[$i]->cgu_id ;?>"><?= $cgu[$i]->cgu_entete ;?></a>
                                <?php else:?>
                                    <a class="__cg_items list-group-item list-group-item-action" id="list-<?= $cgu[$i]->cgu_id ;?>-list" data-toggle="list" href="#list-<?= $cgu[$i]->cgu_id ;?>" role="tab" aria-controls="<?= $cgu[$i]->cgu_id ;?>"><?= $cgu[$i]->cgu_entete ;?></a>
                                <?php endif ;?>
                                
                            <?php endfor; ?>
                            <!-- <a class="__cg_items list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">Home</a>
                            <a class="__cg_items list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Profile</a>
                            <a class="__cg_items list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Messages</a>
                            <a class="__cg_items list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Settings</a> -->
                        </div>
                    </div>

                    <div class="__cg_big">
                        <p class="__cg_tab_title">Condition Generale d'utilisation</p>
                        <div class="tab-content" id="nav-tabContent">
                        <?php for ($a = 0; $a < count($cgu); $a++) : ?>
                                <?php if($a == 0): ?>
                                    <div class="__cg_tab tab-pane fade show active" id="list-<?= $cgu[$a]->cgu_id ;?>" role="tabpanel" aria-labelledby="list-<?= $cgu[$a]->cgu_id ;?>-list">
                                    <?= $a + 1 ;?>. <?= $cgu[$a]->cgu_contenu ;?>
                            </div>
                                <?php else:?>
                                    <div class="__cg_tab tab-pane fade show" id="list-<?= $cgu[$a]->cgu_id ;?>" role="tabpanel" aria-labelledby="list-<?= $cgu[$a]->cgu_id ;?>-list">
                                    <?= $a + 1 ;?>. <?= $cgu[$a]->cgu_contenu ;?>
                            </div>
                                <?php endif ;?>
                                
                            <?php endfor; ?>
                            <!-- <div class="__cg_tab tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                                1. Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste reiciendis ipsa, debitis fuga nobis mollitia maxime dolor nulla voluptates, enim quae quam ut. Totam atque, vitae minima debitis natus molestiae.
                            </div>
                            <div class="__cg_tab tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                                2. Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste reiciendis ipsa, debitis fuga nobis mollitia maxime dolor nulla voluptates, enim quae quam ut. Totam atque, vitae minima debitis natus molestiae.
                            </div>
                            <div class="__cg_tab tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
                                3. Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste reiciendis ipsa, debitis fuga nobis mollitia maxime dolor nulla voluptates, enim quae quam ut. Totam atque, vitae minima debitis natus molestiae.
                            </div>
                            <div class="__cg_tab tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                                4. Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste reiciendis ipsa, debitis fuga nobis mollitia maxime dolor nulla voluptates, enim quae quam ut. Totam atque, vitae minima debitis natus molestiae.
                            </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>