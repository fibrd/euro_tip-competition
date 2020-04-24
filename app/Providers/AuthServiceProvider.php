<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        /**
         * Defines whether Auth::user is admin
         */
        Gate::define('admin', function( $user, $admin_email = 'admin@admin.admin' )
        {
            return $user->email == $admin_email;
        });

        /**
         * Defines access control for deleting post
         * Only author or admin can delete it
         */
        Gate::define('delete-post', function( $user, $post)
        {
            if (Gate::allows('admin')) {
                return true;
            }
            else{
                return $user->id == $post->user_id;
            }
        });
    }
}
