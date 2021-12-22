<?= $this->extend('template/dashboard/index'); ?>

<?= $this->Section('content'); ?>
<h4>
    <p>Tambah User Akses</p>
</h4>
<form action="<?php echo base_url() ?>user/add" method='post'>
    <table class="table table-bordered" width="100%" cellspacing="0">
        <tr>
            <td>NIK</td>
            <td><input type="number" name="nik" class="form-control" required></td>
        </tr>
        <tr>
            <td>Nama</td>
            <td><input type="text" name="nama" class="form-control" required></td>
        </tr>

        <tr>
            <td>Jabatan</td>
            <td>
                <select name="jabatan" class="form-control">
                    <option value="">-Silahkan Pilih-</option>
                    <option value="staff">Staff</option>
                    <option value="kku">KKU</option>
                    <option value="mbu">MBU</option>
                    <option value="pemcab">PEMCAB</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="email" name="email" class="form-control" required></td>
        </tr>
        <tr>
            <td>Username</td>
            <td><input type="text" name="username" class="form-control" required></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" class="form-control" required></td>
        </tr>
        <tr>
            <td colspan='2'>
                <input type="submit" class="btn btn-success float-right" name="simpan" value="simpan">
                <a href="<?php echo base_url() ?>/admin" class="btn btn-info float-right"> Kembali</a></<input>
            </td>
        </tr>

    </table>
</form>
<?= $this->endSection(); ?>