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

                    <form action="">
                        <div class="form-group mb-3">
                            <?php
                            $i = 0;
                            foreach ($questions as $question) :
                                if ($i <= count($questions)) : ?>
                                    <tr>
                                        <h4><?= $i + 1, ". ", $question['pertanyaan']; ?></h4>

                                        <div class="d-flex justify-content-around">
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 5 ?> name="tes<?= $i; ?>" value="5">
                                                <label class="form-check-label" for=<?= $i + 5 ?>> 5 </label>
                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 10 ?> name="tes<?= $i; ?>" value="4">
                                                <label class="form-check-label" for=<?= $i + 10 ?>> 4 </label>
                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 15 ?> name="tes<?= $i; ?>" value="3">
                                                <label class="form-check-label" for=<?= $i + 15 ?>> 3 </label>
                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 20 ?> name="tes<?= $i; ?>" value="2">
                                                <label class="form-check-label" for=<?= $i + 20 ?>> 2 </label>
                                            </div>

                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" id=<?= $i + 25 ?> name="tes<?= $i; ?>" value="1">
                                                <label class="form-check-label" for=<?= $i + 25 ?>> 1 </label>
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

</div>
<script>
    function kirim() {
        var jawaban = document.getElementById('jawaban').value;
        console.log(jawaban);
    }
</script>

<?php
require_once("./templates/footer.php")
?>