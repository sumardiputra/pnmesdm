<?= $this->extend('template/dashboard/index'); ?>
<?= $this->Section('content'); ?>
<div class="x_content">

    <section class="content invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12 invoice-header">
                <h1>
                    <!-- <small class="pull-right"><?= $today = date("Y-m-d H:i:s") ?></small> -->
                </h1><br>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row">
            <div class="col-sm-4">
                <center>
                    <img src="<?= base_url() ?>/dist/login/images/pnm.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
                </center>
            </div>
            <!-- /.col -->
            <div class="col-sm-4">
                <center>
                    <img src="<?= base_url() ?>/dist/login/images/esdm3.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
                    <h3>Sasaran Kerja Individu</h3>
                </center>
            </div>
            <!-- /.col -->
            <div class="col-sm-4">
                <center>
                    <img src="<?= base_url() ?>/dist/login/images/esdm2.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
                </center>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="col-xs-6">
            <p class="lead"></p>

            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <th style="width:30%">NIK</th>
                            <td>
                                <b>:</b> <?= user()->nip; ?>
                            </td>
                        </tr>
                        <tr>
                            <th style="width:30%">Nama Lengkap</th>
                            <td>
                                <b>:</b> <?= user()->nama; ?>
                            </td>
                        </tr>
                        <tr>
                            <th style="width:30%">Jabatan</th>
                            <td>
                                <b>:</b> <?= user()->jabatan; ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-xs-6">
            <p class="lead"></p>

            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <th style="width:30%">Lokasi Kerja</th>
                            <td>
                                <b>:</b> Cabang
                            </td>
                        </tr>
                        <tr>
                            <th style="width:10%">Unit Kerja</th>
                            <td>
                                <b>:</b> <?= user()->unit_kerja; ?>
                            </td>
                        </tr>
                        <tr>
                            <th style="width:10%">Periode</th>
                            <td>
                                <b>:</b> <?= $today = date("Y-m-d") ?> - <?= $today = date("Y-m-d") ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Sasaran Kerja Individu</th>
                            <th>Key Performance Indicator</th>
                            <th>Bobot</th>
                            <th>Target</th>
                            <th>Satuan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Digitalisasi proses</td>
                            <td>Implementasi digitalisasi pada unit bisnis Mekaar dan digitalisasi pada unit bisnis ULaMM serta mendukung digitalisasi pada proses pendukung bisnis dan operasional lainnya.</td>
                            <td>25.00</td>
                            <td>100.00</td>
                            <td>Persentasi</td>
                        </tr>
                        <tr>
                            <td>Digitalisasi proses</td>
                            <td>Implementasi digitalisasi pada unit bisnis Mekaar dan digitalisasi pada unit bisnis ULaMM serta mendukung digitalisasi pada proses pendukung bisnis dan operasional lainnya.</td>
                            <td>25.00</td>
                            <td>100.00</td>
                            <td>Persentasi</td>
                        </tr>
                        <tr>
                            <td>Digitalisasi proses</td>
                            <td>Implementasi digitalisasi pada unit bisnis Mekaar dan digitalisasi pada unit bisnis ULaMM serta mendukung digitalisasi pada proses pendukung bisnis dan operasional lainnya.</td>
                            <td>25.00</td>
                            <td>100.00</td>
                            <td>Persentasi</td>
                        </tr>
                        <tr>
                            <td>Digitalisasi proses</td>
                            <td>Implementasi digitalisasi pada unit bisnis Mekaar dan digitalisasi pada unit bisnis ULaMM serta mendukung digitalisasi pada proses pendukung bisnis dan operasional lainnya.</td>
                            <td>25.00</td>
                            <td>100.00</td>
                            <td>Persentasi</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <!-- accepted Pemutus column -->
            <!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Keterangan SDM</p>
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                            <tr>
                                <th style="width:50%">5 >= 120%</th>
                                <td>Mencapai Target</td>
                            </tr>
                            <tr>
                                <th>4 >= 100%</th>
                                <td>Sesuai Target</td>
                            </tr>
                            <tr>
                                <th>3 >= 90%</th>
                                <td>Surat Keputusan</td>
                            </tr>
                            <tr>
                                <th>2 >= 50%</th>
                                <td>Surat Keputusan</td>
                            </tr>
                            <tr>
                                <th>1 =< 50%</th>
                                <td>Surat Keputusan</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-4">
                <p class="lead">Penilaian</p>

                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                    <tr>
                        <th style="width:30%">NIK</th>
                        <td>
                            <b>:</b> <?= user()->nip; ?>
                        </td>
                    </tr>
                </p>
                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                    Nilai PA :
                </p>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->


        <div class="col-md-6 col-sm-4 col-xs-12 profile_details">
            <div class="well profile_view">
                <div class="col-sm-12">
                    <h4 class="brief"><i>Atasan</i></h4>
                    <div class="left col-xs-7">
                        <h2><?= user()->nama; ?></h2>
                        <p><strong><?= user()->nip; ?></strong></p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-building"></i> <?= user()->jabatan; ?></li>
                            <li><i class="fa fa-phone"></i> <?= user()->unit_kerja; ?></li>
                        </ul>
                    </div>
                    <div class="right col-xs-5 text-center">
                        <img src="<?= base_url() ?>/dist/login/images/profile.svg" alt="" class="img-circle img-responsive">
                    </div>
                </div>
                <div class="col-xs-12 bottom text-center">
                    <div class="col-xs-12 col-sm-6 emphasis">
                        <p>APPROVE</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-4 col-xs-12 profile_details">
            <div class="well profile_view">
                <div class="col-sm-12">
                    <h4 class="brief"><i>Atasan dari Atasan Langsung</i></h4>
                    <div class="left col-xs-7">
                        <h2><?= user()->nama; ?></h2>
                        <p><strong><?= user()->nip; ?></strong></p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-building"></i> <?= user()->jabatan; ?></li>
                            <li><i class="fa fa-phone"></i> <?= user()->unit_kerja; ?></li>
                        </ul>
                    </div>
                    <div class="right col-xs-5 text-center">
                        <img src="<?= base_url() ?>/dist/login/images/profile.svg" alt="" class="img-circle img-responsive">
                    </div>
                </div>
                <div class="col-xs-12 bottom text-center">
                    <div class="col-xs-12 col-sm-6 emphasis">
                        <p>APPROVE</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- this row will not appear when printing -->
        <div class="row no-print">
            <div class="col-xs-12">
                <button class="btn btn-default" onclick="window.print();"><i class="fa fa-print"></i> Print</button>
                <button class="btn btn-success pull-right">Submit</button>
                <button class="btn btn-primary pull-right" style="margin-right: 5px;">Batal</button>
            </div>
        </div>
    </section>
</div>
<br>

<?= $this->endSection(); ?>