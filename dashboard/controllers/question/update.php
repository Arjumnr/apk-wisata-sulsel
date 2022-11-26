<?php
require_once("../../../controllers/conn.php");
//login
//mencari data didatabase sesuai post
if ($_POST['pertanyaan'] == "") {
        echo json_encode(array("status" => "error", "message" => "Tidak Boleh Kosong"));
        return;
}

$result = mysqli_query($connect, "SELECT * FROM questions WHERE pertanyaan='" . $_POST['pertanyaan'] . "'");
//cek apakah data ditemukan
if (mysqli_num_rows($result) <= 1) {
        // $_POST['password'] = md5($_POST['password']);
        //mengambil data dari dari variable result merubah jadi array
        $result = update("questions", "pertanyaan='" . $_POST['pertanyaan'] . "' WHERE id='" . $_GET['id'] . "'");
        //cek password
        if ($result) {
                echo json_encode(array("status" => "success", "message" => "Berhasil Update Pertanyaan"));
        } else {
                echo json_encode(array("status" => "error", "message" => "Gagal Update Pertanyaan"));
        }
} else {
        echo json_encode(array("status" => "error", "message" => "pertanyaan Sudah Ada", "data" => mysqli_num_rows($result)));
}
