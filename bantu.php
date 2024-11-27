<?php

$password = 1234;
$pass = password_hash($password, PASSWORD_DEFAULT);
echo $pass;