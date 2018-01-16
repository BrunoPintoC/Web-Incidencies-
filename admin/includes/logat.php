<?php
    session_start();
	if (isset($_SESSION["correu_usuari"])) {
        if ($_SESSION["correu_usuari"]=="") {
            header("Location:login.php");
	   }
    } else {
        header("Location:login.php");        
    } ?>
