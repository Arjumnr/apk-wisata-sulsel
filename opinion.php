<?php
$title = "Wisata Sulawesi Selatan- Opinion";
require_once './templates/_header.php';
require_once './controllers/conn.php';
require_once './templates/header.php';
$questions = many("SELECT * FROM questions ORDER BY id ASC");
?>


<!-- start page title area -->
<div class="rn-breadcrumb-inner ptb--30">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
                <h5 class="title text-center text-md-start">Opinion</h5>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <ul class="breadcrumb-list">
                    <li class="item"><a href="index.html">Home</a></li>
                    <li class="separator"><i class="feather-chevron-right"></i></li>
                    <li class="item current">Opinion</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- end page title area -->
<div class="terms-condition-area rn-section-gapTop">
    <div class="container">
        <div class="row">
            <div class="offset-lg-2 col-lg-8">
                <div class="condition-wrapper">

                    <form action="" id="valForm" method="POST">
                        <div class="form-group mb-3">
                            <?php
                            $i = 0;
                            foreach ($questions as $question) :
                                if ($i <= count($questions)) : ?>
                                    <tr>
                                        <h4><?= $i + 1, ". ", $question['pertanyaan']; ?></h4>
                                        <input type="text" hidden name="total" value=<?= count($questions) ?>>

                                        <div class="d-flex justify-content-around">
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 500 ?> name="Q<?= $i; ?>" value="5">
                                                <label class="form-check-label" for=<?= $i + 500 ?>> 5 </label>

                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 400 ?> name="Q<?= $i; ?>" value="4">
                                                <label class="form-check-label" for=<?= $i + 400 ?>> 4 </label>

                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 300 ?> name="Q<?= $i; ?>" value="3">
                                                <label class="form-check-label" for=<?= $i + 300 ?>> 3 </label>

                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 200 ?> name="Q<?= $i; ?>" value="2">
                                                <label class="form-check-label" for=<?= $i + 200 ?>> 2 </label>

                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 100 ?> name="Q<?= $i; ?>" value="1">
                                                <label class="form-check-label" for=<?= $i + 100 ?>> 1 </label>
                                            </div>
                                        </div>
                                        <br>
                                    </tr>
                                <?php endif; ?>
                                <?php $i++; ?>
                            <?php
                            endforeach; ?>
                        </div>
                        <div class="col-md-12 text-center">
                            <button type="button" class="btn btn-primary" onclick="kirim()">Submit</button>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php
require_once("./templates/footer.php")
?>
<script type="text/javascript">
    function kirim() {
        var valForm = document.forms["valForm"];
        var total = document.getElementsByName("total")[0].value;
        var dataRB = [];
        for (var i = 0; i < total; i++) {
            var rb = valForm["Q" + i];
            for (var j = 0; j < rb.length; j++) {
                if (rb[j].checked) {
                    dataRB.push(rb[j].value);
                }
            }
        }

        console.log(dataRB);
        if (dataRB.length == total) {
            $.ajax({
                url: "./controllers/responden.php",
                type: "POST",
                data: {
                    "responden": dataRB
                },
                success: function(data) {
                   Swal.fire({
                        icon: 'success',
                        title: 'Terima Kasih',
                        text: 'Data berhasil dikirim!',
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = "./index.php";
                        }
                    })
                }
            });
        } else {
           Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Silahkan isi semua pertanyaan!',
            })
        }
    }
</script>

<?php
require_once("./templates/footer.php")
?>