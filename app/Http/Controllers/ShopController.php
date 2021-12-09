<?php

namespace App\Http\Controllers;
use App\Models\Shop;

use App\Models\User;
use App\Models\Category;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $shops = Shop::all();
        
        return view('shop.index',compact('shops'));
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('shop.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'company' => 'required|max:255',
            'address1' => 'required|max:255',
            'address2' => 'nullable|max:255',
            'city' => 'required|max:255',
            'state' => 'required|max:255',
            'zip' => 'nullable|max:255',
            'country' => 'required|max:255',
            'phone1' => 'required|max:255',
            'email' => 'required|max:255',
            'type' => 'nullable|max:255',
            'website' => 'nullable|max:255',
        ]);
        
        if ($validator->fails()) {
            // dd($validator->errors());
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }

        $shop=Shop::create($request->except(['_token']));
        $shop->save();
        
        return redirect()->route('shop.index')->with("status", "Shop has been Added.");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $shop = Shop::find($id);
        return view('shop.create',compact('shop'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'company' => 'required|max:255',
            'address1' => 'required|max:255',
            'address2' => 'nullable|max:255',
            'city' => 'required|max:255',
            'state' => 'required|max:255',
            'zip' => 'nullable|max:255',
            'country' => 'required|max:255',
            'phone1' => 'required|max:255',
            'email' => 'required|max:255',
            'type' => 'nullable|max:255',
            'website' => 'nullable|max:255',
        ]);
        
        if ($validator->fails()) {
            // dd($validator->errors());
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }

        $shop=Shop::findOrFail($id)->update($request->except(['_token']));
        
        return redirect()->route('shop.index')->with("status", "Shop has been Updated.");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Content  $content
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user=Shop::findOrFail($id);
        $user->delete();
        return redirect()->back();
    }
}
