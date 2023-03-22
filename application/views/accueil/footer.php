<!-- FOOTER -->
<div class="py-5" id="footer" style="background-color: #2d2925;">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<img class="logo-footer mb-2" src="<?= base_url() ?>publics/image/logo.png" alt="logo Igoguide">
				<p class="text-white mt-2">La plateforme intuitive qui vous trouve toutes vos adresses de loisirs !</p>

				<div class="mt-3">
					<p class="boldTxt text-white">Rejoignez-nous</p>
					<ul class="my-list">
						<li>
							<a href=""><i class="fab fa-facebook-f colored-icon"></i></a>
							<a href=""><i class="fab fa-instagram colored-icon"></i></a>
							<!-- <a href=""><i class="fab fa-google colored-icon"></i></a> -->
						</li>
						<li>
							<a href="">Devenez partenaire</a>
						</li>
						<li>
							<a href="">Offrez un bon-cadeau</a>
						</li>
					</ul>
				</div>
			</div>

			<div class="col-md-2 col-sm-6">
				<p class="boldTxt text-white">A propos</p>
				<ul class="my-list">
					<li>
						<a href="">Besoin d'aide ?</a>
					</li>
					<li>
						<a href="">Mentions légales</a>
					</li>
					<li>
						<a href="">Confidentialité</a>
					</li>
					<li>
						<a href="<?= base_url() ;?>Home/cgu">CGU</a>
					</li>
					<li>
						<a href="<?= base_url() ;?>Home/faq">FAQ</a>
					</li>
				</ul>
			</div>

			<div class="col-md-2 col-sm-6">
				<p class="boldTxt text-white ">Catégories</p>
				<ul class="my-list">
					<li>
						<a href="">Hébergements</a>
					</li>
					<li>
						<a href="">Où boire ?</a>
					</li>
					<li>
						<a href="">Où manger</a>
					</li>
					<li>
						<a href="">Balades</a>
					</li>
					<li>
						<a href="">Activités</a>
					</li>
					<li>
						<a href="">Services</a>
					</li>
					<li>
						<a href="">Hauts-de-France</a>
					</li>
				</ul>
			</div>

			<div class="col-md-2 col-sm-6">
				<p class="boldTxt text-white">Pour vous</p>
				<ul class="my-list">
					<li>
						<a href="">Carte cadeau</a>
					</li>
					<li>
						<a href="<?= base_url(); ?>Home/loginUsers">Se connecter</a>
					</li>
					<li>
						<a href="<?= base_url(); ?>Home/loginProfessionnel">Espace pro</a>
					</li>
				</ul>
			</div>

			<div class="col-md-3 col-sm-6">
				<p class="boldTxt text-white ">Commentaires</p>
				<ul class="my-list">
					<li>
						<div class="media">
							<img class="mr-3 img-mo" src="<?= base_url() ?>publics/image/au_fil_de_l_eau.png" alt="Generic placeholder image">
							<div class="media-body">
								<p class="text-white text-comments">Super expérience avec ce guide pour vous montrer les sites touristiques cachés</p>
							</div>
						</div>
					</li>
					<li>
						<div class="media">
							<img class="mr-3 img-mo" src="<?= base_url() ?>publics/image/au_fil_de_l_eau.png" alt="Generic placeholder image">
							<div class="media-body">
								<p class="text-white text-comments">J'ai pu compilé mes activités avec mon hébergement. Je recommande!</p>
							</div>
						</div>
					</li>
					<li>
						<div class="media">
							<img class="mr-3 img-mo" src="<?= base_url() ?>publics/image/au_fil_de_l_eau.png" alt="Generic placeholder image">
							<div class="media-body">
								<p class="text-white text-comments">Avec IGOguide, j'ai découvert une nouvelle façon de chercher mes loisirs! Le site est très interactif et j'ai pu enfin trouver les activités de mes enfants et un restaurant aux alentours. Très simple! C'est ce qui nous manquait!</p>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="" id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-center">
				<p class="text-white copyright" id="copyright-1">IGOgroup ne facture aucun frais de service pour les utilisateurs de notre site.</p>
				<p class="text-white copyright" id="copyright-2">2020 - 2023 IGOguide Tous droits réservés.</p>
			</div>
		</div>
	</div>
</div>


<!-- The Modal -->
<div class="modal modal-modif" id="myModal1">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>
				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cabane_arbres.png" style="height:45px;width: 45px;" alt="">

						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px; ">Cabane dans les arbres</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cabane_sous_terre.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Cabane sous terre</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cabane_sur_terre.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Cabane sur terre</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cabane_sur_l_eau.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Cabane sur l'eau</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bulle.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Bulles</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/tipis_tente_yourte.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Tipis / tente / Yourte</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/habitat_roulant.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Habitas roulants</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/monument_historique.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Monuments historiques</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bateau.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Bateaux</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cabane_arbres.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Hebergements de charme</a>
						</div>
					</li>
					<li class=" list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/hotels_atypiques.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Hôtels atypiques</a>
						</div>
					</li>
				</ul>
			</div>

		</div>
	</div>
</div>

<div class="modal modal-modif" id="myModal2">
	<div class="modal-dialog">
		<div class="modal-content">



			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>

				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_whiskies.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Lounges / Whiskies / Cocktails</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_rooftop.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Bars à rooftop</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_vin.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Bars à vins</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_pubs _ tapas.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Pubs / Bars à tapas</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_billard.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Bars à thèmes / Jeux / Billards</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/concert_bar.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Concerts bars</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/bar_chat.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Bars à chats</a>
						</div>
					</li>
				</ul>
			</div>



		</div>
	</div>
</div>

<div class="modal modal-modif" id="myModal3">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>
				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/restaurants_originaux.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Restaurants originaux</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/restaurants_annimation.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Restaurants avec animations</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/brasserie_bistrot.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Brasserie - Bistrot - Auberges</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cuisine_traditionnelle.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Cuisines traditionnelles</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cuisine_monde.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Cuisines du monde</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/type_fast_food.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Types fast food / tapas</a>
						</div>
					</li>
				</ul>
			</div>

		</div>
	</div>
</div>

<div class="modal modal-modif" id="myModal4">
	<div class="modal-dialog">
		<div class="modal-content">


			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>
				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/au_fil_de_l_eau.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Au fil de l'eau</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/perles_sauvages.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Randonnées nature</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/monument_historique.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Sites historiques</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/perles_sauvages.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Les perles sauvages</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/jardins_imaginaire.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Les jardins imaginaires</a>
						</div>
					</li>
				</ul>
			</div>


		</div>
	</div>
</div>

<div class="modal modal-modif" id="myModal5">
	<div class="modal-dialog">
		<div class="modal-content">


			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>
				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/restaurants_originaux.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Ateliers et stages</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/restaurants_annimation.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Activités sportives</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/brasserie_bistrot.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Activités ludiques</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cuisine_traditionnelle.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Activités gustative</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/cuisine_monde.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Activités bien-être</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/type_fast_food.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Shoppind artisans et créateurs</a>
						</div>
					</li>
				</ul>
			</div>


		</div>
	</div>
</div>

<div class="modal modal-modif" id="myModal6">
	<div class="modal-dialog">
		<div class="modal-content">



			<!-- Modal body -->
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<br>
				<ul class="list-group">
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/organisateurs.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Organisateurs</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/photographe.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Photographes etc.</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/traiteur.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class=" ml-2" style="font-size: 13px;">Traiteurs</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/fleuriste.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Fleuristes</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/location_voiture.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Locations de véhicules</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/location_velo.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Locations de vélos</a>
						</div>
					</li>
					<li class="list-group-item list-v-center">
						<img class="" src="<?= base_url() ?>publics/image/divers_pressing.png" style="height:45px;width: 45px;" alt="">
						<div class="pl-1">
							<a href="" class="ml-2" style="font-size: 13px;">Divers</a>
						</div>
					</li>
				</ul>
			</div>


		</div>
	</div>
</div>

<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCD7BvR3RtGHKwPXt_Q6vaSzvwTYzNIZ_0&callback=initMap"></script>
<script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"></script>

<script>
	window.FontAwesomeConfig = {
		autoReplaceSvg: false
	}
</script>

<script src="<?= base_url() ?>publics/js/app.js"></script>
<script src="<?= base_url() ?>publics/js/maps.js"></script>

<script src="<?= base_url() ?>publics/js/result.js"></script>

<script>
	ScrollReveal().reveal('.move', {
		delay: 100,
		distance: '105%',
		origin: 'bottom',
		opacity: null
	});
	ScrollReveal().reveal('.move1', {
		delay: 100,
		distance: '105%',
		origin: 'bottom',
		opacity: null
	});
	ScrollReveal().reveal('.move2', {
		delay: 150,
		distance: '105%',
		origin: 'bottom',
		opacity: null
	});
	ScrollReveal().reveal('.move3', {
		delay: 200,
		distance: '105%',
		origin: 'bottom',
		opacity: null
	});

	// accordion
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var panel = this.nextElementSibling;
			if (panel.style.maxHeight) {
				panel.style.maxHeight = null;
			} else {
				panel.style.maxHeight = panel.scrollHeight + "px";
			}
		});
	}
</script>
</body>

</html>