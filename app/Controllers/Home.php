<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        return view('dashboard');
    }
    public function lihat()
    {
        return view('user/inputski');
    }
    public function inputski()
    {
        return view('ski/v_input_ski');
    }
    public function inputkpi()
    {
        return view('kpi/v_input_kpi');
    }
}
