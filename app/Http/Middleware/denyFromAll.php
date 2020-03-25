<?php

namespace App\Http\Middleware;

use Closure;

class denyFromAll
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        return \redirect("/")->with("messageMiddleware","You can't access to this page");
    }
}
