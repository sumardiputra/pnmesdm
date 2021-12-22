<?= $this->extend('template/login/index'); ?>

<?= $this->section('content'); ?>
<div class="limiter">
    <div class="container-login100" style="background-image: url('<?= base_url() ?>/dist/login/images/bg-meta.png');">

        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="<?= base_url() ?>/dist/login/images/esdm.png" alt="IMG">
            </div>

            <form class="login100-form validate-form" action="<?= route_to('login') ?>" method="post">
                <?= csrf_field() ?>
                <span class="login100-form-title">
                    Login eSDM <br> PNM Cabang Jakarta
                    <?= view('Myth\Auth\Views\_message_block') ?>
                </span>

                <div class="wrap-input100 validate-input" data-validate="Valid email/user is required">

                    <input type="text" class="input100 <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="<?= lang('Auth.emailOrUsername') ?>">
                    <div class="invalid-feedback">
                        <?= session('errors.login') ?>
                    </div>
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-id-badge" aria-hidden="true"></i>
                    </span>
                </div>

                <div class="wrap-input100 validate-input" data-validate="Password is required">
                    <input type="password" name="password" class="input100  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>">
                    <div class="invalid-feedback">
                        <?= session('errors.password') ?>
                    </div>
                    <span class="focus-input100"></span>
                    <span class="symbol-input100">
                        <i class="fa fa-lock" aria-hidden="true"></i>
                    </span>
                </div>
                <div class="container-login100-form-btn">
                    <button type="submit" class="login100-form-btn"><?= lang('Auth.loginAction') ?></button>
                </div>
                <!--
                <div class="text-center p-t-12">
                    <span class="txt1">
                        Forgot
                    </span>
                    <a class="txt2" href="#">
                        Username / Password?
                    </a>
                </div>
                -->
                <div class="text-center p-t-136" style="margin-top:-100px;">
                    <span style="font-size: smaller;">Sistem Penilaian Digital</span>
                </div>
            </form>
        </div>
        <div class="wrap-login100-footer text-center w-full">
            <small>Copyright &copy; 2022 SPM</small>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>