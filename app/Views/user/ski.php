<?= $this->extend('template/dashboard/index'); ?>

<?= $this->Section('content'); ?>
<div class="x_panel">
    <div class="x_title">
        <h2>Form Input Grid <small>form input </small></h2>
        <div class="clearfix"></div>
    </div>
    <div class="x_content">

        <div class="row">

            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                <img src="<?= base_url() ?>/dist/login/images/pnm.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
            </div>

            <div class="col-md-3 col-sm-12 col-xs-12 form-group">
            </div>


            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                <img src="<?= base_url() ?>/dist/login/images/pnm.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                <table>
                    <tbody>
                        <tr>
                            <td>NAMA</td>
                            <td>:</td>
                            <td><?= user()->nama; ?></td>
                        </tr>
                        <tr>
                            <td>NIK</td>
                            <td>:</td>
                            <td><?= user()->username; ?></td>
                        </tr>
                        <tr>
                            <td>JABATAN</td>
                            <td>:</td>
                            <td><?= user()->jabatan; ?></td>
                        </tr>
                        <tr>
                            <td>DIVISI/UNIT KERJA</td>
                            <td>:</td>
                            <td>12123.12.31</td>
                        </tr>
                        <tr>
                            <td>PERIODE PENILAIAN</td>
                            <td>:</td>
                            <td>
                                <fieldset>
                                    <div class="control-group">
                                        <div class="controls">
                                            <div class="input-prepend input-group">
                                                <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                                <input type="text" style="width: 200px" name="reservation" id="reservation" class="form-control" value="01/01/2016 - 01/25/2016" />
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">First Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="first-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Last Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input type="text" id="last-name" name="last-name" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name / Initial</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="middle-name" class="form-control col-md-7 col-xs-12" type="text" name="middle-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div id="gender" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="male"> &nbsp; Male &nbsp;
                                </label>
                                <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="gender" value="female"> Female
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Birth <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <input id="birthday" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                    </div>
                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button class="btn btn-primary" type="button">Cancel</button>
                            <button class="btn btn-primary" type="reset">Reset</button>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>

                </form>
            </div>


        </div>
    </div>
</div>
</div>
<?= $this->endSection(); ?>