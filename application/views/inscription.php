<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="device=device-width,initial-scale=1.0">


	<title>Igoguide | Inscription Pro</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css">
    
	<script src="https://unpkg.com/scrollreveal"></script>
	
    
	<!-- Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet"> 	
	<!-- CSS Custom -->
	<link rel="stylesheet" href="<?php echo base_url() ;?>publics/css/index.css">

</head>
<body class="bg-beige">

    <section class="register-photo">
        <div class="border rounded form-container">
            <div class="image-holder"></div>
            <?php echo form_open("Users/insertUsers", array("class" => "border rounded")) ; ?>
                <a href="<?php echo base_url() ;?>Home/" class="arrow-modif"><i class="fa-solid fa-arrow-left"></i></a>
                <!-- <h2 class="text-center"><strong>Créer un compte</strong></h2> -->
                <div class="d-flex justify-content-center mb-3">
                    <img src="<?php echo base_url() ;?>publics/image/logo-pour-fond-blanc.png" style="width: 100px;" alt="">
                </div>
                <input class="border rounded form-control" type="hidden" name="users_type" placeholder="Nom" value="professionnel">
                <div class="form-group">
                    <input class="border rounded form-control" value="<?php echo $val = $inscription_data['users_nom'] ?? '' ?>" type="text" name="users_nom" placeholder="Nom">
                    <?php echo form_error('users_nom'); ?>
                </div>
                
                <div class="form-group">
                    <input class="border rounded form-control" type="text" name="users_prenoms" placeholder="Prénom" value="<?php echo $val = $inscription_data['users_prenoms'] ?? '' ?>">
                    <?php echo form_error('users_prenoms'); ?>
                </div>
                <div class="form-group">
                    <input class="border rounded form-control" type="email" placeholder="E-mail" name="users_email" value="<?php echo $val = $inscription_data['users_email'] ?? '' ?>">
                    <?php echo form_error('users_email'); ?>
                </div>
                <div class="form-group">
                    <input class="border rounded form-control" type="text" name="users_telephone" placeholder="Télephone" value="<?php echo $val = $inscription_data['users_telephone'] ?? '' ?>">
                    <?php echo form_error('users_telephone'); ?>
                </div>
                <div class="form-group">
                    <input class="border rounded form-control" type="password" placeholder="Mot de passe" name="users_motdepasse">
                    <?php echo form_error('users_motdepasse'); ?>
                </div>
                <div class="form-group">
                    <input class="border rounded form-control" type="password" placeholder="Confirmer mot de passe" name="users_motdepasse">
                    <?php echo form_error('users_motdepasse'); ?>
                </div>
                <!-- <div class="form-group"><label>Choisissez votre logo</label><input class="border rounded form-control-file" type="file"></div> -->
                <div class="form-group">
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="formCheck-1"><label class="form-check-label" for="formCheck-1">J'accepte les<a href="<?php echo base_url() ;?>Home/cgv">&nbsp;CGU</a>&nbsp;</label></div>
                </div>
                <div class="form-group">
                    <button class="btn btn-warning btn-block" type="submit">S'inscrire</button>
                </div>
                <a class="already" href="<?php echo base_url() ;?>Home/loginProfessionnel">J'ai déjà un compte. Se connecter</a>
            </form>
        </div>
    </section>


	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/js/all.min.js" integrity="sha512-2bMhOkE/ACz21dJT8zBOMgMecNxx0d37NND803ExktKiKdSzdwn+L7i9fdccw/3V06gM/DBWKbYmQvKMdAA9Nw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script src="<?php echo base_url() ;?>publics/js/app.js"></script>
</body>
</html>