<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    protected $fillable = ['parent_id', 'subcategory_id'];

    public function parents()
    {
        return $this->belongsToMany(Category::class, 'category_subcategory', 'subcategory_id', 'parent_id');
    }
}
