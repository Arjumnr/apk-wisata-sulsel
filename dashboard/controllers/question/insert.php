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
        //mengambil data dari dari variable result merubah jadi array
        $result = tambah("questions", "pertanyaan='" . $_POST['pertanyaan'] . "' ");
        //cek password
        if ($result) {
                echo json_encode(array("status" => "success", "message" => "Berhasil Tambah Pertanyaan"));
        } else {
                echo json_encode(array("status" => "error", "message" => "Gagal Tambah Pertanyaan"));
        }
} else {
        echo json_encode(array("status" => "error", "message" => "pertanyaan Sudah Ada", "data" => mysqli_num_rows($result)));
}
