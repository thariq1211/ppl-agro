<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Panduan extends Model
{
    protected $table = 'guides';
	protected $primaryKey = 'id';
	protected $fillable = ['jenis_naga','panduan'];
}
