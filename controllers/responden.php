<?php
require_once 'conn.php';


// mencari data didatabase sesuai post
if ($_POST['responden'] == "") {
    echo json_encode(array("status" => "error", "message" => "Tidak Boleh Kosong"));
    return;
}

$s = $_POST['responden'];
$result = tambah("responden", "('','" . $s[0] . "', 
                                    '" . $s[1] . "',
                                    '" . $s[2] . "',
                                    '" . $s[3] . "',
                                    '" . $s[4] . "',
                                    '" . $s[5] . "',
                                    '" . $s[6] . "',
                                    '" . $s[7] . "',
                                    '" . $s[8] . "',
                                    '" . $s[9] . "'
                                    )");

if ($result) {
    echo json_encode(array("status" => "success", "message" => "Berhasil Tambah Responden"));
} else {
    echo json_encode(array("status" => "error", "message" => "Gagal Tambah Responden"));
}
