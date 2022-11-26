<?php
$title = "Wisata Sulawesi Selatan- Opinion";
require_once './templates/_header.php';
require_once './controllers/conn.php';
require_once './templates/header.php';
$help = single("SELECT * FROM contents WHERE setting = 'help'");
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
                    
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require_once("./templates/footer.php")
?>