<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RoleUser extends Model
{
    protected $table = "role_user";
    protected $guarded = ['id'];
    protected $timestrap = true;    
}