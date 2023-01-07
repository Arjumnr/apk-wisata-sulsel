<?php
require_once("../../../controllers/conn.php");
$data = many("SELECT * FROM responden WHERE Q1 LIKE '%" . $_GET['cari'] . "%' ORDER BY responden.id DESC LIMIT " . $_GET['to'] . ", " . $_GET['end'] . " ");
$jumlah = many("SELECT SUM(Q1) AS Q1, SUM(Q2) AS Q2, SUM(Q3) AS Q3, SUM(Q4) AS Q4, SUM(Q5) AS Q5, SUM(Q6) AS Q6, SUM(Q7) AS Q7, SUM(Q8) AS Q8, SUM(Q9) AS Q9, SUM(Q10) AS Q10 FROM responden");
$nilai = many("SELECT SUM(Q1*2.5) AS Q1, SUM(Q2*2.5) AS Q2, SUM(Q3*2.5) AS Q3, SUM(Q4*2.5) AS Q4, SUM(Q5*2.5) AS Q5, SUM(Q6*2.5) AS Q6, SUM(Q7*2.5) AS Q7, SUM(Q8*2.5) AS Q8, SUM(Q9*2.5) AS Q9, SUM(Q10*2.5) AS Q10 FROM responden");
$totalJumlah = $jumlah[0]['Q1'] + $jumlah[0]['Q2'] + $jumlah[0]['Q3'] + $jumlah[0]['Q4'] + $jumlah[0]['Q5'] + $jumlah[0]['Q6'] + $jumlah[0]['Q7'] + $jumlah[0]['Q8'] + $jumlah[0]['Q9'] + $jumlah[0]['Q10'];
$totalNilai = $nilai[0]['Q1'] + $nilai[0]['Q2'] + $nilai[0]['Q3'] + $nilai[0]['Q4'] + $nilai[0]['Q5'] + $nilai[0]['Q6'] + $nilai[0]['Q7'] + $nilai[0]['Q8'] + $nilai[0]['Q9'] + $nilai[0]['Q10'];
$jumlahResponden = count($data);
$hasil = $totalNilai / $jumlahResponden;
$hasil = number_format($hasil, 2);
?>

<div class="row">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title">Jumlah</h6>
                        <div class="d-flex align-items-center mb-3">
                            <div>
                                <div class="avatar">
                                    <span class="avatar-title bg-info-bright text-info rounded-pill">
                                        <i class="ti-map"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="font-weight-bold ml-1 font-size-20 ml-3">Jumlah Responden = <?= count($data) ?></div>
                        </div>
                        <div class="d-flex align-items-center mb-3">
                            <div>
                                <div class="avatar">
                                    <span class="avatar-title bg-info-bright text-info rounded-pill">
                                        <i class="ti-map"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="font-weight-bold ml-1 font-size-20 ml-3">Skor Rata-Rata = <?= $totalNilai; ?></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="image">
                        <img src="assets/media/image/rumus.png" class="img-fluid" alt="image">
                    </div>
                    <div class="card-body">
                        <h6 class="card-title">Hasil Metode SUS</h6>
                        <div class="d-flex align-items-center mb-3">
                            <div>
                                <div class="avatar">
                                    <span class="avatar-title bg-info-bright text-info rounded-pill">
                                        <i class="ti-map"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="font-weight-bold ml-1 font-size-20 ml-3">Hasil = <?= $hasil?></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<table id="example1" class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>No</th>
            <th>Q1</th>
            <th>Q2</th>
            <th>Q3</th>
            <th>Q4</th>
            <th>Q5</th>
            <th>Q6</th>
            <th>Q7</th>
            <th>Q8</th>
            <th>Q9</th>
            <th>Q10</th>
            <th>Jumlah</th>
            <th>Nilai (Jumlah x 2.5) </th>

        </tr>
    </thead>
    <tbody>

        <?php if (count($data) == 0) : ?>
            <tr>
                <td colspan="4" class="text-center">Data tidak ditemukan</td>
            </tr>
        <?php else : ?>

            <?php foreach ($data as $id => $v) : ?>
                <tr>
                    <td><?= $id + 1 ?></td>
                    <td><?= $v['Q1'] ?></td>
                    <td><?= $v['Q2'] ?></td>
                    <td><?= $v['Q3'] ?></td>
                    <td><?= $v['Q4'] ?></td>
                    <td><?= $v['Q5'] ?></td>
                    <td><?= $v['Q6'] ?></td>
                    <td><?= $v['Q7'] ?></td>
                    <td><?= $v['Q8'] ?></td>
                    <td><?= $v['Q9'] ?></td>
                    <td><?= $v['Q10'] ?></td>
                    <td><?= $v['Q1'] + $v['Q2'] + $v['Q3'] + $v['Q4'] + $v['Q5'] + $v['Q6'] + $v['Q7'] + $v['Q8'] + $v['Q9'] + $v['Q10'] ?></td>
                    <td><?= ($v['Q1'] + $v['Q2'] + $v['Q3'] + $v['Q4'] + $v['Q5'] + $v['Q6'] + $v['Q7'] + $v['Q8'] + $v['Q9'] + $v['Q10']) * 2.5 ?></td>
                </tr>
        <?php endforeach;
        endif ?>

    </tbody>
    <tfoot>
        <tr>
            <th>No</th>
            <th>Q1</th>
            <th>Q2</th>
            <th>Q3</th>
            <th>Q4</th>
            <th>Q5</th>
            <th>Q6</th>
            <th>Q7</th>
            <th>Q8</th>
            <th>Q9</th>
            <th>Q10</th>
            <th>Jumlah</th>
            <th>Nilai (Jumlah x 2.5) </th>

        </tr>
    </tfoot>
</table>