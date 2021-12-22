<?= $this->extend('template/dashboard/index'); ?>
<?= $this->Section('content'); ?>
<!-- page content -->
<div class="row">
    <div class="col-md-12">
        <div class="">
            <div class="x_content">
                <div class="row">
                    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="tile-stats">
                            <div class="count"><?= user()->nama; ?></div>

                            <h3><?= user()->jabatan; ?></h3>
                            <p><?= user()->unit_kerja; ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- /page content -->
<?= $this->endSection(); ?>