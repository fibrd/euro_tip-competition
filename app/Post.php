<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['user_id', 'post'];


    public function getRichPostAttribute()
    {
        $post = $this->post;
        $post = htmlspecialchars($post);
        // $post = str_replace('&amp;', '&', $post);
        $post = filter_url($post);
        return add_paragraphs($post);
    }


    public function user()
    {
        return $this->belongsTo('App\User');
    }


}
