<?php
if(isset($_POST['user'])){
    $user=$_POST['user'];
    exec("sudo -S occtl disconnect id ".$user);
    echo $user;
}
?>
