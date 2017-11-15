<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class cekHasil extends Controller{

    public function index (request $request){
        return view('simulasi_jenisBuah');
    }
    public function simpanDataLuasLahan(Request $request){
        $request->session()->put('jenisbuah',$request->jenisbuah);
        $request->session()->put('luasLahan',$request->luasLahan);
        $request->session()->put('jarakTanam',$request->jarakTanam);
        return view('simulasi_teksturTanah');
    }
    public function simpanDataTekstur(Request $request){
        $request->session()->put('teksturTanah',$request->teksturTanah);
        return view('simulasi_ketinggian');
    }
    public function simpanDataKetinggian(Request $request){
        $request->session()->put('ketinggian',$request->ketinggian);
        return view('simulasi_pupuk');
    }
    public function simpanDataPupuk(Request $request){
        $request->session()->put('pupuk',$request->pupuk);
        return view('simulasi_temperatur');
    }
    public function simpanDataTemperatur(Request $request){
        $request->session()->put('suhu',$request->suhu);
        return view('simulasi_intensitasCahaya');
    }
    public function simpanDataCahaya(Request $request){
        $request->session()->put('cahaya',$request->cahaya);
        return view('simulasi_curahHujan');
    }
    public function simpanDataHujan(Request $request){
        $request->session()->put('hujan',$request->hujan);
    }
    public function tampilkanHasil(Request $request){
//        mengecek hasil produksi
        $request->session()->put('hujan',$request->hujan);
        $lahan = $request->session()->get('luasLahan');
        $luasLahan = $lahan *10000;
        $jarakTanam = $request->session()->get('jarakTanam');

        $buah = $request->session()->get('jenisbuah');
        $tekstur = $request->session()->get('teksturTanah');
        $ketinggian = $request->session()->get('ketinggian');
        $pH = $request->session()->get('pupuk');
        $suhu = $request->session()->get('suhu');
        $cahaya = $request->session()->get('cahaya');
        $hujan = $request->session()->get('hujan');
        $hasil =  ($luasLahan / $jarakTanam) * 4; //mengecek hasil kilogram perluas lahan
        $request->session()->put('hasilproduksi',$hasil);
//        =========================================================
//        pengecekan hasil buah naga merah grade A
        if ($buah=='merah'){
            if (($tekstur == 'tanahliat')){ //cek tekstur
                $request->session()->put('bobotTekstur',0.15);
                if ($ketinggian == 'rendah'){ //cek ketinggian
                    $request->session()->put('bobotKetinggian',0.15);
                    if ($pH=='asam'){ //cek pH
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu=='dingin'){ //cek suhu
                                $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH=='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }
                } elseif ($ketinggian == 'tinggi'){
                    $request->session()->put('bobotKetinggian',0.10);
                    if ($pH=='asam'){
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH=='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }
                } else {
                    $request->session()->put('bobotKetinggian',0.12);
                    if ($pH=='asam'){
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu=='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH=='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }

                }
            } else {
                $request->session()->put('bobotTekstur',0.10);
                if ($ketinggian == 'rendah'){
                    $request->session()->put('bobotKetinggian',0.15);
                    if ($pH=='asam'){
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH =='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }
                } elseif ($ketinggian == 'tinggi'){
                    $request->session()->put('bobotKetinggian',0.10);
                    if ($pH =='asam'){
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH =='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }
                } else {
                    $request->session()->put('bobotKetinggian',0.12);
                    if ($pH =='asam'){
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }elseif ($pH =='basa'){
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu=='dingin'){
                            $request->session()->put('bobotSuhu',0.05);
                        }elseif ($suhu =='sedang'){
                            $request->session()->put('bobotSuhu',0.08);
                        }else{
                            $request->session()->put('bobotSuhu',0.10);
                        }
                    }
                }
            }
            if ($cahaya =='cerah'){
                $request->session()->put('bobotCahaya',0.12);
                if ($hujan=='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                }elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                }elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                }else{
                    $request->session()->put('bobotHujan',0.02);
                }
            } elseif ($cahaya =='berawan'){
                $request->session()->put('bobotCahaya',0.15);
                if ($hujan =='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                }elseif ($hujan=='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                }elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                }else{
                    $request->session()->put('bobotHujan',0.02);
                }
            } elseif ($cahaya=='mendung'){
                $request->session()->put('bobotCahaya',0.10);
                if ($hujan =='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                }elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                }elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                }else{
                    $request->session()->put('bobotHujan',0.02);
                }
            } else {
                $request->session()->put('bobotCahaya',0.08);
                if ($hujan=='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                }elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                }elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                }else{
                    $request->session()->put('bobotHujan',0.02);
                }
            }
        } else if ($buah=='putih'){
                if ($tekstur =='tanahliat') {
                    $request->session()->put('bobotTekstur',0.10);
                    if ($ketinggian=='rendah') {
                        $request->session()->put('bobotKetinggian',0.12);
                        if ($pH=='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    } elseif ($ketinggian=='sedang') {
                        $request->session()->put('bobotKetinggian',0.15);
                        if ($pH=='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu=='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    } else {
                        $request->session()->put('bobotKetinggian',0.10);
                        if ($pH=='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu=='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu=='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    }
                } else {
                    $request->session()->put('bobotTekstur',0.15);
                    if ($ketinggian =='rendah') {
                        $request->session()->put('bobotKetinggian',0.12);
                        if ($pH=='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    } elseif ($ketinggian=='sedang') {
                        $request->session()->put('bobotKetinggian',0.15);
                        if ($pH =='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    } else {
                        $request->session()->put('bobotKetinggian',0.10);
                        if ($pH =='asam') {
                            $request->session()->put('bobotPupuk',0.10);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } elseif ($pH=='basa') {
                            $request->session()->put('bobotPupuk',0.12);
                            if ($suhu=='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        } else {
                            $request->session()->put('bobotPupuk',0.15);
                            if ($suhu =='dingin'){
                                $request->session()->put('bobotSuhu',0.08);
                            } elseif ($suhu =='sedang') {
                                $request->session()->put('bobotSuhu',0.10);
                            } else {
                                $request->session()->put('bobotSuhu',0.05);
                            }
                        }
                    }
                }
            if ($cahaya =='cerah'){
                $request->session()->put('bobotCahaya',0.12);
                if ($hujan=='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                } elseif ($hujan=='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                } elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                } else {
                    $request->session()->put('bobotHujan',0.02);
                }
            } elseif ($cahaya=='berawan'){
                $request->session()->put('bobotCahaya',0.15);
                if ($hujan=='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                } elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                } elseif ($hujan=='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                } else {
                    $request->session()->put('bobotHujan',0.02);
                }
            } elseif ($cahaya=='mendung'){
                $request->session()->put('bobotCahaya',0.10);
                if ($hujan =='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                } elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                } elseif ($hujan =='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                } else {
                    $request->session()->put('bobotHujan',0.02);
                }
            } else {
                $request->session()->put('bobotCahaya',0.08);
                if ($hujan=='rendah'){
                    $request->session()->put('bobotHujan',0.10);
                } elseif ($hujan =='sedang'){
                    $request->session()->put('bobotHujan',0.08);
                } elseif ($hujan=='tinggi'){
                    $request->session()->put('bobotHujan',0.05);
                } else {
                    $request->session()->put('bobotHujan',0.02);
                }
            }
        } else {
            if ($tekstur=='tanahliat'){
                $request->session()->put('bobotTekstur',0.10);
                if ($ketinggian=='rendah') {
                    $request->session()->put('bobotKetinggian',0.10);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($hujan=='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH=='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                } elseif ($ketinggian=='sedang') {
                    $request->session()->put('bobotKetinggian',0.12);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu=='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH=='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu=='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                } else {
                    $request->session()->put('bobotKetinggian',0.15);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH=='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                }
            } else {
                $request->session()->put('bobotTekstur',0.15);
                if ($ketinggian=='rendah') {
                    $request->session()->put('bobotKetinggian',0.10);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH =='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                } elseif ($ketinggian=='sedang') {
                    $request->session()->put('bobotKetinggian',0.12);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH=='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                } else {
                    $request->session()->put('bobotKetinggian',0.15);
                    if ($pH=='asam') {
                        $request->session()->put('bobotPupuk',0.10);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } elseif ($pH=='basa') {
                        $request->session()->put('bobotPupuk',0.12);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    } else {
                        $request->session()->put('bobotPupuk',0.15);
                        if ($suhu =='dingin') {
                            $request->session()->put('bobotSuhu',0.10);
                        } elseif ($suhu =='sedang') {
                            $request->session()->put('bobotSuhu',0.08);
                        } else {
                            $request->session()->put('bobotSuhu',0.05);
                        }
                    }
                }
            }
        }
        if ($cahaya=='cerah'){
            $request->session()->put('bobotCahaya',0.12);
            if ($hujan=='rendah'){
                $request->session()->put('bobotHujan',0.10);
            } elseif ($hujan=='sedang'){
                $request->session()->put('bobotHujan',0.08);
            } elseif ($hujan=='tinggi'){
                $request->session()->put('bobotHujan',0.05);
            } else {
                $request->session()->put('bobotHujan',0.02);
            }
        } elseif ($cahaya=='berawan'){
            $request->session()->put('bobotCahaya',0.15);
            if ($hujan=='rendah'){
                $request->session()->put('bobotHujan',0.10);
            } elseif ($hujan=='sedang'){
                $request->session()->put('bobotHujan',0.08);
            } elseif ($hujan =='tinggi'){
                $request->session()->put('bobotHujan',0.05);
            } else {
                $request->session()->put('bobotHujan',0.02);
            }
        } elseif ($cahaya=='mendung'){
            $request->session()->put('bobotCahaya',0.10);
            if ($hujan=='rendah'){
                $request->session()->put('bobotHujan',0.10);
            } elseif ($hujan=='sedang'){
                $request->session()->put('bobotHujan',0.08);
            } elseif ($hujan=='tinggi'){
                $request->session()->put('bobotHujan',0.05);
            } else {
                $request->session()->put('bobotHujan',0.02);
            }
        } else {
            $request->session()->put('bobotCahaya',0.08);
            if ($hujan=='rendah'){
                $request->session()->put('bobotHujan',0.10);
            } elseif ($hujan =='sedang'){
                $request->session()->put('bobotHujan',0.08);
            } elseif ($hujan =='tinggi'){
                $request->session()->put('bobotHujan',0.05);
            } else {
                $request->session()->put('bobotHujan',0.02);
            }
        }

        $bobotTekstur = $request->session()->get('bobotTekstur');
        $bobotHujan = $request->session()->get('bobotHujan');
        $bobotSuhu = $request->session()->get('bobotSuhu');
        $bobotPupuk = $request->session()->get('bobotPupuk');
        $bobotCahaya = $request->session()->get('bobotCahaya');
        $bobotKetinggian = $request->session()->get('bobotKetinggian');
        $hasilAnalisisA = ($bobotTekstur + $bobotHujan + $bobotSuhu + $bobotPupuk + $bobotCahaya +$bobotKetinggian) * $hasil;

        $gradeB = 0.9;
        $hasilAnalisisB = ($hasil - $hasilAnalisisA) * $gradeB;
        $hasilAnalisisC = ($hasil - $hasilAnalisisA)- $hasilAnalisisB;
        $request->session()->put('gradeA',$hasilAnalisisA);
        $request->session()->put('gradeB',$hasilAnalisisB);
        $request->session()->put('gradeC',$hasilAnalisisC);
        return view ('showHasil');
    }
    public function Ulang (Request $request){
        $request->session()->flush();
        return view('simulasi_jenisBuah');
    }
}
