<?php

namespace App\Http\Middleware;

use Closure;

class adminLogIn
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
        if($request->session()->has("user")){
            if($request->session()->get("user")[0]->idUloga != 1){
                return \redirect("/")->with("messageMiddleware","You arenot admin,please log in here!");
            }else{
                return $next($request);
            }
        }else{
            return \redirect("/")->with("messageMiddleware","You arenot admin,please log in here!");
        }
        
    }
}
