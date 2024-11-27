<?php
// Koneksi ke database
$koneksi = mysqli_connect("localhost", "root", "tkjtkj", "db_sekolah");

// Cek koneksi
if (mysqli_connect_errno()) {
    die("Gagal koneksi ke database: " . mysqli_connect_error());
}

// URL Induk
$main_url = "http://192.168.3.114/sekolah/";

function uploadimg($url)
{
    $namafile    = $_FILES['image']['name'];
    $ukuran      = $_FILES['image']['size'];
    $error       = $_FILES['image']['error'];
    $tmp         = $_FILES['image']['tmp_name'];

    // Cek apakah ada error upload
    if ($error !== UPLOAD_ERR_OK) {
        // Menangani error upload
        header("Location: $url?msg=uploaderror");
        exit;
    }

    // Validasi ekstensi gambar
    $validExtension = ['jpg', 'jpeg', 'png'];
    $fileExtension  = explode('.', $namafile);
    $fileExtension  = strtolower(end($fileExtension));
    if (!in_array($fileExtension, $validExtension)) {
        header("Location: $url?msg=notimage");
        exit;
    }

    // Cek ukuran gambar (maksimal 1MB)
    if ($ukuran > 1000000) { // 1 MB = 1000000 bytes
        header("Location: $url?msg=oversize");
        exit;
    }

    // Generate nama file baru
    if ($url == 'profile-sekolah.php') {
        $namafilebaru = rand(0, 50) . '-bgLogin.' . $fileExtension;
    } else {
        $namafilebaru = rand(10, 1000) . '-' . $namafile;
    }


    // Pastikan folder tujuan dapat diakses dan memiliki izin yang tepat
    $targetPath = "../asset/image/" . $namafilebaru;

    // Cek apakah file dapat dipindahkan
    if (!move_uploaded_file($tmp, $targetPath)) {
        header("Location: $url?msg=uploadfailed");
        exit;
    }

    // Mengembalikan nama file baru setelah berhasil upload
    return $namafilebaru;
}

?>