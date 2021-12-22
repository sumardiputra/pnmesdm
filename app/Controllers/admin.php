<?php

namespace App\Controllers;

use App\Models\PegawaiModel;

class Admin extends BaseController
{
    protected $tbl_karyawan;

    function __construct()
    {
        $this->row = new PegawaiModel();
    }

    public function index()
    {
        $data['contacts'] = $this->row->findAll();

        return view('admin/index', $data);
    }

    public function ski()
    {
        $data['contacts'] = $this->row->findAll();

        return view('user/ski', $data);
    }

    public function adduser()
    {
        return view('admin/v_input_user');
    }

    public function create()
    {
        $this->row->insert([
            'nip' => $this->request->getPost('nip'),
            'nama' => $this->request->getPost('nama'),
            'posisi' => $this->request->getPost('posisi'),
            'unit_kerja' => $this->request->getPost('unit_kerja'),
            'tgl_lahir' => $this->request->getPost('tgl_lahir'),

        ]);
        return redirect('contact')->with('Sukses', 'Data sudah ditambahkan');
    }
}
