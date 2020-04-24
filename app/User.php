<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Str;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'firstname', 'lastname', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    /**
     * Mutater that makes every input name to ucfirst
     *
     * @param string $value
     * @return void
     */
    public function setFirstnameAttribute($value){
        $name = Str::lower($value);
        $name = Str::ucfirst($name);
        
        $this->attributes['firstname'] = $name;
    }

    
    /**
     * Mutater that makes every input name to ucfirst
     *
     * @param string $value
     * @return void
     */
    public function setLastnameAttribute($value){
        $name = Str::lower($value);
        $name = Str::ucfirst($name);

        $this->attributes['lastname'] = $name;
        $this->attributes['alias'] =  $this->createAlias($this->firstname, $this->lastname);
        $this->attributes['avatar'] = 'img/avatars/svg/020-man-7.svg';
    }


    /**
     * Private function for creating the sweet aliases
     *
     * @param string $firstname
     * @param string $lastname
     * @return void
     */
    private function createAlias($firstname, $lastname)
    {
        $alias = Str::limit($lastname, 5);
        $alias .= Str::limit($firstname, 3);
        $alias = Str::slug($alias);

        return $alias;
    }
    

    /**
     * Accessor that provides the fullname attribute
     *
     * @return void
     */
    public function getFullnameAttribute()
    {
        return $this->firstname . ' ' . $this->lastname; 
    }


    /**
     * Eloquent model connection to posts
     *
     * @return void
     */
    public function posts()
    {
        return $this->hasMany('App\Post');
    }

    /**
     * Eloquent model connection to tips
     *
     * @return void
     */
    public function tips()
    {
        return $this->hasMany('App\Tip');
    }

    /**
     * Eloquent model connection to participants
     *
     * @return void
     */
    public function participant()
    {
        return $this->hasOne('App\Participant');
    }
}
