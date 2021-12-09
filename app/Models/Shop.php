<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    protected $fillable=[
        "company",
        "address1",
        "address2",
        "city",
        "state",
        "zip",
        "country",
        "lat",
        "lng",
        "email",
        "phone1",
        "type",
        "website"
    ];
}
