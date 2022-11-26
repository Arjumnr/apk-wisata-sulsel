<?php
require_once("../../../controllers/conn.php");
$data = many("SELECT * FROM questions WHERE pertanyaan LIKE '%" . $_GET['cari'] . "%' ORDER BY questions.id DESC");
if (count($data) == 0)
        $data = [
                [
                        "id" => "",
                        "questions" => "Data tidak ditemukan",
                ]
        ];
echo json_encode(array("total_page" => ceil(count($data) / $_GET['jml']), "total_data" => count($data)));
