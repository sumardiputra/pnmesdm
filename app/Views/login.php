<?= $this->extend('template/login/index'); ?>
<?= $this->section('content') ?>

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

				<?php if ($config->validFields === ['email']) : ?>
					<div class="form-group">
						<label for="login"><?= lang('Auth.email') ?></label>
						<input type="email" class="wrap-input100 validate-input <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="<?= lang('Auth.email') ?>">
						<div class="">
							<?= session('errors.login') ?>
						</div>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-id-badge" aria-hidden="true"></i>
						</span>
					</div>
				<?php else : ?>
					<div class="form-group">
						<label for="login"><?= lang('Auth.emailOrUsername') ?></label>
						<input type="text" class="wrap-input100 validate-input <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" name="login" placeholder="<?= lang('Auth.emailOrUsername') ?>">
						<div class="invalid-feedback">
							<?= session('errors.login') ?>
						</div>
					</div>
				<?php endif; ?>

				<div class="form-group">
					<label for="password"><?= lang('Auth.password') ?></label>
					<input type="password" name="password" class="wrap-input100 validate-input  <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" placeholder="<?= lang('Auth.password') ?>">
					<div class="invalid-feedback">
						<?= session('errors.password') ?>
					</div>
				</div>

				<?php if ($config->allowRemembering) : ?>
					<div class="form-check">
						<label class="form-check-label">
							<input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
							<?= lang('Auth.rememberMe') ?>
						</label>
					</div>
				<?php endif; ?>

				<br>

				<button type="submit" class="container-login100-form-btn login100-form-btn"><?= lang('Auth.loginAction') ?></button>
			</form>

			<hr>

			<?php if ($config->allowRegistration) : ?>
				<p><a href="<?= route_to('register') ?>"><?= lang('Auth.needAnAccount') ?></a></p>
			<?php endif; ?>
			<?php if ($config->activeResetter) : ?>
				<p><a href="<?= route_to('forgot') ?>"><?= lang('Auth.forgotYourPassword') ?></a></p>
			<?php endif; ?>
		</div>
	</div>

</div>
</div>
</div>

<?= $this->endSection() ?>