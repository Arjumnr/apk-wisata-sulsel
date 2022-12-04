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
                            <?php foreach ($questions as $question => $v) : ?>
                                <h3><?= $v['pertanyaan']; ?></h3>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="btn1" name="optradio" value="good">
                                            <label class="form-check-label" for="btn1"> 5 </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="btn2" name="optradio" value="good">
                                            <label class="form-check-label" for="btn2"> 4 </label>
                                        </div>
                                        <div class="fosrm-check">
                                            <input type="radio" class="form-check-input" id="btn3" name="optradio" value="good">
                                            <label class="form-check-label" for="btn3"> 3 </label>
                                        </div>

                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="btn4" name="optradio" value="good">
                                            <label class="form-check-label" for="btn4"> 2 </label>
                                        </div>
                                        <div class="form-check">
                                            <input type="radio" class="form-check-input" id="btn1" name="optradio" value="good">
                                            <label class="form-check-label" for="btn1"> 1 </label>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>

                        </div>
                        <div class="col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

</div>

<?php
require_once("./templates/footer.php")
?>