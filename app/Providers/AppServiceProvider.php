<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\support\facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        Paginator::useBootstrapFive();

        Gate::define('admin', function (User $user) {
            return $user->is_admin;
        });
    }
}
