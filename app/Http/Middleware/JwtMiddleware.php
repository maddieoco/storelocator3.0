<?php

namespace App\Http\Middleware;

use Closure;
use JWTAuth;
use Exception;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;

class JwtMiddleware extends BaseMiddleware
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
  
        try {

                $user = JWTAuth::parseToken()->authenticate();
                $status = "Something went wrong.";
            } catch (Exception $e) {
                
                if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                    $status = 'Token is Invalid';
                }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                    $status = "Token is expired.";
                }else{
                    $status = "Authorization Token not found";                    
                }

                if( ($request->isMethod('post') && $request->is('api/organizer/event'))
                    
                    || $request->is('api/organizer/profile') 
                    || $request->is('api/organizer/event/*') 
                    || $request->is('/api/organizer/event/*/detail') 
                    || $request->is('api/organizer/profile/update') 
                    || ($request->isMethod('post') && $request->is('api/organizer/ticket')) 
                    || $request->is('api/organizer/add-guest') 
                    || ($request->isMethod('post') && $request->is('api/account/order')) 
                    || ($request->isMethod('get') && $request->is('api/account/address')) 

                    ){

                        return api_response([],400,$status);

                    }elseif($request->is('api/organizer/dashboard')){

                        return api_response([
                        "total_events" => "0",
                        "top_event_wrt_revenue" => [],
                        "total_revenue_earned" => "",
                        "total_revenue_pending" => ""
                        ],400,$status);

                    }elseif( ($request->isMethod('get') && $request->is('api/organizer/event') && $request->is('notifications') ) 

                        || $request->is('api/organizer/guest') 
                        || $request->is('api/organizer/team') 
                        || $request->is('api/organizer/ticket') 
                        || $request->is('api/team/guest') 
                        || $request->is('api/team/event/*/guest')
                        || $request->is('api/team/attendess_list')
                        || $request->is('api/guest-categories')

                    ){

                        return api_response([],400,$status);

                    }elseif($request->is('api/auth/update/password')){
                        
                        return api_response("",400,$status);
                        // return api_response("",400,'Something went wrong.');
                    }

                    return api_response([],400,'Something went wrong.');


            }
            return $next($request);
    }
}
