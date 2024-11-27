<?php
session_start();

if (isset($_SESSION["ssLogin"])) {
    header("location:../index.php");
    exit;
}

require_once "../config.php";

$sekolah = mysqli_query($koneksi, "SELECT * FROM tbl_sekolah WHERE id = 1");
$data = mysqli_fetch_array($sekolah);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login - SMA Al-Azhar Gemilang</title>
    <link href="<?= $main_url ?>asset/sb-admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link rel="icon" type="image/x-icon" href="<?= $main_url ?>asset/image/toga.png">

    <style>
        /* Background login */
        #bgLogin {
            background-image: url("../asset/image/<?= $data['gambar'] ?>");
            background-size: cover;
            background-position: center center;
        }

        /* Global body style */
        body {
            margin: 0;
            overflow: hidden;
            background-color: black;
        }

        /* Efek Tulisan Timbul */
        @keyframes timbul {
            0% {
                opacity: 0;
                text-shadow: 0px 0px 5px #aaa;
                transform: scale(0.8);
            }
            50% {
                opacity: 0.5;
                text-shadow: 3px 3px 10px #666;
                transform: scale(1.1);
            }
            100% {
                opacity: 1;
                text-shadow: 5px 5px 15px #000;
                transform: scale(1);
            }
        }

        .welcome-message {
            font-family: 'Z003', cursive;
            font-size: 3em;
            color: blue;
            text-shadow: 2px 2px 4px black; /* Bayangan */
            position: absolute;
            width: 100%;
            top: 0;
            text-align: center;
            white-space: nowrap;
            animation: timbul 3s ease-out forwards;
        }
    </style>
</head>

<body id="bgLogin">
    <!-- Tulisan Selamat Datang dengan Efek Timbul -->
    <div class="welcome-message">
        SELAMAT DATANG DI SMA AL-AZHAR GEMILANG
    </div>

    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container mt-4">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h4 class="text-center font-weight-light my-4">Login - SMA Al-Azhar Gemilang</h4>
                                </div>
                                <div class="card-body">
                                    <form action="proseslogin.php" method="POST">
                                        <div class="form-floating mb-3">
                                            <input class="form-control" id="username" name="username" type="text"
                                                pattern="[A-Za-z0-9]{3,}"
                                                title="kombinasi angka dan huruf minimal 3 karakter"
                                                placeholder="username" autocomplete="off" required />
                                            <label for="username">Username</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input class="form-control" id="inputPassword" type="password"
                                                placeholder="Password" minlength="4" name="password" required />
                                            <label for="inputPassword">Password</label>
                                        </div>
                                        <button type="submit" name="login"
                                            class="btn btn-primary col-12 rounded-pill my-2">Login</button>
                                    </form>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="text-muted small">Copyright &copy; SMA Al-Azhar Gemilang <?= date("Y") ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="<?= $main_url ?>asset/sb-admin/js/scripts.js"></script>
</body>

</html>

