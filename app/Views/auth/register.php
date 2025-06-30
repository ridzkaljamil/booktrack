<?= $this->extend('layouts/home_layout') ?>

<?= $this->section('head') ?>
<title><?= lang('Auth.register') ?></title>
<?= $this->endSection() ?>

<?= $this->section('back'); ?>
<a href="<?= url_to('login') ?>" class="btn btn-outline-primary m-3 position-absolute">
  <i class="ti ti-arrow-left"></i>
  Login
</a>
<?= $this->endSection(); ?>

<?= $this->section('content') ?>

<?php
// Paksa logout user jika masih login
if (auth()->loggedIn()) {
  auth()->logout();
}
?>

<div class="container d-flex justify-content-center p-5">
  <div class="card col-12 col-md-5 shadow-sm">
    <div class="card-body">
      <h5 class="card-title mb-4 text-center"><?= lang('Auth.register') ?></h5>

      <!-- ✅ Pesan sukses -->
      <?php if (session()->getFlashdata('message')): ?>
        <div class="alert alert-success" role="alert">
          <?= session()->getFlashdata('message') ?>
        </div>
      <?php endif ?>

      <!-- ❌ Error -->
      <?php if (session('error') !== null): ?>
        <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
      <?php elseif (session('errors') !== null): ?>
        <div class="alert alert-danger" role="alert">
          <?php if (is_array(session('errors'))): ?>
            <?php foreach (session('errors') as $error): ?>
              <?= $error ?><br>
            <?php endforeach ?>
          <?php else: ?>
            <?= session('errors') ?>
          <?php endif ?>
        </div>
      <?php endif ?>

      <!-- ✅ Form mengarah ke Shield -->
      <form action="<?= url_to('register') ?>" method="post">
        <?= csrf_field() ?>

        <div class="mb-2">
          <input type="email" class="form-control" name="email" placeholder="<?= lang('Auth.email') ?>"
            value="<?= old('email') ?>" required />
        </div>

        <div class="mb-4">
          <input type="text" class="form-control" name="username" placeholder="<?= lang('Auth.username') ?>"
            value="<?= old('username') ?>" required />
        </div>

        <div class="mb-2">
          <input type="password" class="form-control" name="password" placeholder="<?= lang('Auth.password') ?>"
            required />
        </div>

        <div class="mb-4">
          <input type="password" class="form-control" name="password_confirm"
            placeholder="<?= lang('Auth.passwordConfirm') ?>" required />
        </div>

        <div class="d-grid col-12 mx-auto mb-3">
          <button type="submit" class="btn btn-primary"><?= lang('Auth.register') ?></button>
        </div>
      </form>

    </div>
  </div>
</div>
<?= $this->endSection() ?>