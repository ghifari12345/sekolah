<?php

session_start();

if (!isset($_SESSION['ssLogin'])) {
    header("location:../auth/login.php");
    exit();
}

require_once "../config.php";

if (isset($_POST['simpan'])) {
    $nip = htmlspecialchars($_POST['nip']);
    $nama = htmlspecialchars($_POST['nama']);
    $telpon = htmlspecialchars($_POST['telpon']);
    $alamat = htmlspecialchars($_POST['alamat']);
    $foto = htmlspecialchars($_FILES['image']['name']);

    // Cek apakah NIP sudah ada di database
    $cekNip = mysqli_query($koneksi, "SELECT nip FROM tbl_guru WHERE nip = '$nip'");
    if (mysqli_num_rows($cekNip) > 0) {
        header('location:add-guru.php?msg=cancel');
        return;
    }

    // Proses upload foto jika ada
    if ($foto != null) {
        $url = "add-guru.php";
        $foto = uploadimg($url);
    } else {
        $foto = 'default.png';
    }

    // Menjalankan query insert
    mysqli_query($koneksi, "INSERT INTO tbl_guru VALUES (null, '$nip', '$nama', '$alamat', '$telpon', '$foto')");

    header("location:add-guru.php?msg=added");
    return;
}

if (isset($_POST['update'])) {
    $id     = $_POST['id'];
    $nip    = htmlspecialchars($_POST['nip']);
    $nama   = htmlspecialchars($_POST['nama']);
    $telpon = htmlspecialchars($_POST['telpon']);
    $alamat = htmlspecialchars($_POST['alamat']);
    $foto = htmlspecialchars($_FILES['image']['name']);

    // Ambil data guru saat ini
    $sqlGuru = mysqli_query($koneksi, "SELECT * FROM tbl_guru WHERE id = '$id'");
    $data    = mysqli_fetch_array($sqlGuru);
    $curNIP  = $data['nip'];

    // Cek NIP baru
    $newNIP  = mysqli_query($koneksi, "SELECT nip FROM tbl_guru WHERE nip = '$nip'");

    if ($nip !== $curNIP) {
        if (mysqli_num_rows($newNIP) > 0) {
            header("location:guru.php?msg=cancel");
            return;
        }
    }

    // Pengecekan apakah file diunggah atau tidak
    if ($_FILES['image']['error'] === 4) {
        $fotoGuru = $data['foto']; // Menggunakan foto lama jika tidak ada unggahan baru
    } else {
        $url = "guru.php";
        $fotoGuru = uploadimg($url);
        if ($data['foto'] !== 'default.png') {
            unlink('../asset/image/' . $data['foto']); // Hapus foto lama jika bukan default
        }
    }

    // Menjalankan query update
    mysqli_query($koneksi, "UPDATE tbl_guru SET nip='$nip', nama='$nama', telpon='$telpon', alamat='$alamat', foto='$fotoGuru' WHERE id = '$id'");

    header("location:guru.php?msg=updated");
    return;
}
?>
