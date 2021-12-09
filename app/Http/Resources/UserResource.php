<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        if(!empty($this->email_verified_at)){
            $email_verified = true;
        }else{
            $email_verified = false;
        }
        if($this->hasRole('superadmin')){
            $role = 'super_admin';
        }elseif($this->hasRole('end_user')){
            $role = 'end_user';
        }else{
            
        }
        return [
            "id" => $this->id ?? "",
            "name" =>$this->name ?? "",
            "first_name" =>$this->first_name ?? "",
            "last_name" =>$this->last_name ?? "",
            "email" => $this->email ?? "",
            "profile_image" => $this->profile_image ?? "",
            "about_me" => $this->about_me ?? "",
            "role" => $role ?? "",
            "email_verified" => $email_verified ?? false,
        ];
        return parent::toArray($request);
    }
}
