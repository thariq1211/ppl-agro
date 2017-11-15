<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
	protected $table = 'locations';    
	protected $primaryKey = 'id';
	protected $fillable = ['instansi','lokasi_instansi','jenis_naga'];
	
}
