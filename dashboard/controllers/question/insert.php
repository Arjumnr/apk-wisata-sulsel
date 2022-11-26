<?php
require_once("../../../controllers/conn.php");
//login
//mencari data didatabase sesuai post
if ($_POST['pertanyaan'] == "") {
        echo json_encode(array("status" => "error", "message" => "Tidak Boleh Kosong"));
        return;
}

//mengambil data dari dari variable result merubah jadi array
$result = tambah("questions", "('','" . $_POST['pertanyaan'] . "')");
if ($result) {
        echo json_encode(array("status" => "success", "message" => "Berhasil Tambah Pertanyaan"));
} else {
        echo json_encode(array("status" => "error", "message" => "Gagal Tambah Pertanyaan"));
}
