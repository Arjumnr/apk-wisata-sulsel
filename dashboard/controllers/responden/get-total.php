<?php
require_once("../../../controllers/conn.php");
$data = many("SELECT * FROM responden WHERE Q1 LIKE '%" . $_GET['cari'] . "%' ORDER BY responden.id DESC ");
if (count($data) == 0)
        $data = [
                [
                        "id" => "",
                        "responden" => "Data tidak ditemukan",
                ]
        ];
echo json_encode(array("total_page" => ceil(count($data) / $_GET['jml']), "total_data" => count($data)));
