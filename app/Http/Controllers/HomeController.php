<?php

namespace App\Http\Controllers;

use App\Models\Shop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Biscolab\GoogleMaps\Api\Geocoding;
use Biscolab\GoogleMaps\Enum\GoogleMapsApiConfigFields;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        ini_set('max_execution_time','250');
        $locations = file_get_contents(public_path().'/locations/data.json');
        $locations = json_decode($locations, true);
        
        return view('index',compact('locations'));
        if (auth()->user()->hasRole('superadmin')) {
            return redirect()->route('backend.order.index');
        } else {
            Auth::logout();
            return redirect('/login');
        }
    }

    public function getLocations(Request $request)
    {
        // ini_set('max_execution_time','250');
        try {
            // $locations = file_get_contents(public_path().'/locations/data.json');
            // $locations = json_decode($locations, true);
            $locations = Shop::all();
            return response()->json([
                'status' => 'success',
                'locations' => $locations
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
            ]);
        }
        
    }

    public function dashboard(Request $request)
    {
        // ini_set('max_execution_time','550');
        // $locations = file_get_contents(public_path().'/locations/data.json');
        // $locations = json_decode($locations, true);
        // $geocoding = new Geocoding([
        //     GoogleMapsApiConfigFields::KEY => 'AIzaSyBqqhqN5q545cx57GD5ht6JVidUQuuGd34'
        // ]);
        
        // foreach ($locations as $key => $location) {
        //     if ($key >412) {
        //         $address=$location['Company'].', '.($location['Address1'] !='' ? $location['Address1'] : $location['Address2']);
        //         try {
        //             $result=$geocoding->getByAddress($address);
        //         } catch (\Throwable $th) {
        //             // $results=$geocoding->getByAddress($address);
        //             // dd($location,$result);
        //         }
                
        //         $shop=Shop::create(array_change_key_case($location, CASE_LOWER));
        //         if ($result->count()) {
        //             $result = $result->current()->getGeometry()->getLocation();
        //             $shop->lat=$result->getLat();
        //             $shop->lng=$result->getLng();
        //         }
                
        //         $shop->save();
        //     }
            
        // }

        return view('home');
    }
}
