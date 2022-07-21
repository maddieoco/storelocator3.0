<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Models\UserDevice;
use App\Traits\ApiResponser;
use Illuminate\Http\Request;
use App\Rules\MatchOldPassword;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\RequestResourceCollection;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;

class AuthController extends Controller
{
    use SendsPasswordResetEmails;
    
    public function loginView(Request $request)
    {
        return view('auth.login');
    }

    /**
     * Get a JWT token via given credentials.
     *
     * @param  \Illuminate\Http\Request  $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        // dd($request->all());
        $validator =  Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

    	if ($validator->fails()) {
            $valid_errors=$validator->getMessageBag()->toArray();
            
            foreach ($valid_errors as $key => $error) 
            {
                $errors[] = ['key' => $key,'message' => $valid_errors[$key]];
            }
            return response()->json(['status' =>  'error','data' => $errors]);
        }

        $user= User::where('email', request('email'))->first();
        if ( Auth::attempt($request->only('email', 'password'))) {
            Auth::login($user);

            $success=[
                'status' =>  'success',
                'message' =>  'Login Successful',
            ];
            return response()->json($success, 200);
        }

        return response()->json(['status' => 'error','data' => 'data']);
         
    }
    
    /**
     * Log the user out (Invalidate the token)
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        Auth::logout();
        return redirect('http://store-locator.atdemo.live/');

    }

} 
