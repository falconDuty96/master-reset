<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Igoguide | Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body style="background-color: #f5eee6">
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 col-lg-4"></div>
            <div class="col-md-4 col-lg-4 p-3 mt-5">
                <div class="w-100 d-flex justify-content-center">
                    <img src="<?php echo base_url(); ?>publics/image/logo-pour-fond-blanc.png" style="width: 100px" class="" alt="">
                </div>
                <?php echo form_open("Dashboard/doConnect",array(
                    "class" => "form-group mt-4 border shadow bg-white" ,
                    "style" => "padding: 50px 30px 50px 30px" ,
                ))?>
                    <input type="text" name="superuser_pseudo" placeholder="Pseudo" class="form-control mb-2" value="<?php echo $val = $login_data['superuser_pseudo'] ?? '' ?>">
                    <?php echo form_error('superuser_pseudo'); ?>
                    <input type="password" name="superuser_motdepasse" placeholder="Mot de passe" class="form-control mb-2" value="<?php echo $val = $login_data['superuser_motdepasse'] ?? '' ?>">
                    <?php echo form_error('superuser_motdepasse'); ?>
                    <input type="submit" class="btn btn-primary btn-block" value="Se connecter">
                    <?php if(isset($error) && $error): ?>
                        <div class="alert alert-danger mt-3" role="alert">
                        <?= $message ; ?>
                        </div>
                    <?php endif ;?>
                </form>
            </div>
            <div class="col-md-4 col-lg-4"></div>
        </div>
    </div>




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

</html>