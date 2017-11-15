<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manfaat extends Model
{
    protected $table = 'benefits';
    protected $primaryKey = 'id';
    protected $fillable = ['jenis_naga','kandungan','manfaat'];
}
