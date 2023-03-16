<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="device=device-width,initial-scale=1.0">


	<title>Igoguide | Connexion</title>
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

    <div class="elem-design" style="background-image: url('<?php echo base_url() ;?>publics/image/Connection/header1.webp') ;">
    </div>

    <section class="login-clean design-miakatra">
        
        <?php echo form_open("Users/ConnectUsers") ;?>
            <a href="<?php echo base_url() ;?>Home/" class="arrow-modif"><i class="fa-solid fa-arrow-left"></i></a>
            <!-- <h2 class="sr-only">Login Form</h2> -->
            <div class="d-flex justify-content-center mb-3">
                <img src="<?php echo base_url() ;?>publics/image/logo-pour-fond-blanc.png" style="width: 100px;" alt="">
            </div>
            <!-- <div class="illustration"><i class="fa-solid fa-user-lock"></i></div> -->
			<input class="border rounded form-control" type="hidden" name="users_type" placeholder="Nom" value="particulier">
            <div class="form-group"><input class="border rounded-0 form-control" type="email" name="users_email" placeholder="E-mail" value="<?php echo $val = $login_data['users_email'] ?? '' ?>"><?php echo form_error('users_email'); ?></div>
            <div class="form-group"><input class="border rounded form-control" type="password" name="users_motdepasse" placeholder="Mot de passe" value="<?php echo $val = $login_data['users_motdepasse'] ?? '' ?>"><?php echo form_error('users_motdepasse'); ?></div>
            <div class="form-group"><button class="btn btn-warning btn-block" type="submit">Se connecter</button></div>
            <hr>
            <div class="form-group">
				<a class="btn __btn btn-block" href="<?php echo base_url() ;?>Home/connectUsers">S'inscrire</a>
			</div><a class="forgot" href="forgot_password.html">Mot de passe oublié ?</a>
			<?php if(isset($error) && $error): ?>
                    <div class="alert alert-danger mt-3" role="alert">
                    <?= $message ; ?>
                    </div>
                <?php endif ;?>
        </form>
    </section>
    



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="<?php echo base_url() ;?>publics/js/app.js"></script>
</body>

</html>