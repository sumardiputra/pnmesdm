<?= $this->extend('template/dashboard/index'); ?>

<?= $this->Section('content'); ?>
<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>Data Karyawan <small>Cabang</small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <p class="text-muted font-13 m-b-30">
                <a href="<?= base_url() ?>/admin/create" class="btn btn-info btn-sm">Tambah Data</a>
            </p>
            <table id="datatable-buttons" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>
                            <center>No</center>
                        </th>
                        <th>Nip</th>
                        <th>Nama</th>
                        <th>Posisi</th>
                        <th>Divisi</th>
                        <th style="width:17%">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    foreach ($contacts as $row) {
                    ?>
                        <tr>
                            <td>
                                <center><?php echo $no++; ?></center>
                            </td>
                            <td><?php echo $row['nip']; ?></td>
                            <td><?php echo $row['nama']; ?></td>
                            <td><?php echo $row['posisi']; ?></td>
                            <td><?php echo $row['unit_kerja']; ?></td>
                            <td>
                                <a href="<?= base_url('user/' . $row['nip'] . '/preview') ?>" target="_blank"><i class="fa fa-eye" aria-hidden="true"> Lihat </i></a>
                                <a href="<?= base_url('user/' . $row['tgl_lahir'] . '/edit') ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"> Edit </i>
                                </a>
                                <a href="#" data-href="<?= base_url('user/' . $row['nip'] . '/delete') ?>" onclick="confirmToDelete(this)"><i class="fa fa-trash-o" aria-hidden="true"> Hapus </i>
                                </a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>