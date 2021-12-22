 <!-- menu profile quick info -->
 <div class="profile clearfix text-center">
     <div class="profile clearfix text-center">
         <br>
         <img src="<?= base_url() ?>/dist/login/images/pnm.png" style="width:101px;height:38.6167px;" class="mCS_img_loaded">
         <div class="text-center nav_title navbar profile" style="border: 0;">
             <h2>eSDM PNM</h2>
             <div class="col-md-12 col-sm-12 col-xs-12" style="color: #ECF0F1!important;">
                 PERMODALAN NASIONAL MADANI </div>
         </div>
     </div>
     <br>
     <hr style="margin:15px 10px 5px 20px">
     <span>Selamat datang</span>
     <h4><?= user()->nama; ?></h4>
 </div>
 <!-- /menu profile quick info -->

 <!-- sidebar menu -->
 <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
     <div class="menu_section">
         <ul class="nav side-menu">
             <li><a href="<?= base_url() ?>"><i class="fa fa-home"></i> Home</a>
             </li>
             <li><a><i class="fa fa-edit"></i> Penilaian Karyawan<span class="fa fa-chevron-down"></span></a>
                 <ul class="nav child_menu">
                     <li><a href="<?= base_url() ?>/home/inputski">Sasaran Kerja Individu</a></li>
                     <li><a href="<?= base_url() ?>/home/inputkpi">Key Performance Indicator</a></li>
                     <li><a href="#">Peringkat</a></li>
                 </ul>
             </li>
             <li><a><i class="fa fa-check-square-o"></i> Persetujuan<span class="fa fa-chevron-down"></span></a>
                 <ul class="nav child_menu">
                     <li><a href="#">Sasaran Kerja Individu</a></li>
                     <li><a href="#">Key Performance Indicator</a></li>
                     <li><a href="#">Peringkat</a></li>
                 </ul>
             </li>
             <li><a><i class="fa fa-info-circle"></i> Pedoman<span class="fa fa-chevron-down"></span></a>
                 <ul class="nav child_menu">
                     <li><a href="#">Peraturan Perusahaan</a></li>
                     <li><a href="#">Code of Conduct</a></li>
                     <li><a href="#">Pakta Integritas</a></li>
                 </ul>
             </li>
             <?php if (in_groups('admin')) : ?>
                 <li><a><i class="fa fa-cog"></i> Administrator <span class="fa fa-chevron-down"></span></a>
                     <ul class="nav child_menu">
                         <li><a href="#">Input Data SKI</a></li>
                         <li><a href="<?= base_url() ?>/admin/newuser">Tambah Users Akses</a></li>
                         <li><a href="<?= base_url() ?>/admin">Edit Data Karyawan</a></li>
                     </ul>
                 </li>
             <?php endif; ?>
         </ul>
     </div>
 </div>
 <!-- /sidebar menu -->
 </div>
 </div>