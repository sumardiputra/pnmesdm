<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eSDM Permodalan Nasional Madani</title>

    <link rel="icon" type="image/png" href="<?= base_url() ?>/dist/login/images/icons/favicon.png" />
    <!-- Bootstrap -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- jQuery custom content scroller -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet" />
    <!-- bootstrap-daterangepicker -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">


    <!-- Custom Theme Style -->
    <link href="<?= base_url() ?>/dist/dashboard/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col menu_fixed">
                <div class="left_col scroll-view">

                    <div class="clearfix"></div>

                    <!-- Sidebar -->
                    <?= $this->include('template/dashboard/sidebar'); ?>
                    <!-- End of Sidebar -->

                    <!-- top navigation -->
                    <?= $this->include('template/dashboard/topbar'); ?>
                    <!-- /top navigation -->

                    <div class="right_col" role="main">
                        <div class="">
                            <!-- page content -->
                            <?= $this->renderSection('content'); ?>
                            <!-- /page content -->
                        </div>
                    </div>

                    <!-- footer content -->
                    <footer>
                        <div class="pull-right">
                            Copyright &copy; 2022 SPM
                        </div>
                        <div class="clearfix"></div>
                    </footer>
                    <!-- /footer content -->
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/nprogress/nprogress.js"></script>
    <!-- jQuery custom content scroller -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- iCheck -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/jszip/dist/jszip.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/moment/min/moment.min.js"></script>
    <script src="<?= base_url() ?>/dist/dashboard/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- jQuery Smart Wizard -->
    <script src="<?= base_url() ?>/dist/dashboard/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<?= base_url() ?>/dist/dashboard/build/js/custom.min.js"></script>
</body>

</html>