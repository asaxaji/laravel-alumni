<?php

namespace App\Actions\Fortify;

use App\Models\Alumni;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use TCG\Voyager\Models\Role;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        $findAlumni = Alumni::whereEmail($input['email'])->orWhere('nrp', $input['nrp'])->first();
        $userRole = Role::where('name', 'user')->first();

        Validator::make($input, [
            'firstname' => ['required', 'string', 'max:255'],
            'lastname' => ['required', 'string', 'max:255'],
            'nrp' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'whatsapp' => ['required', 'string', 'max:255'],
            'password' => $this->passwordRules(),
        ])->validate();

        $createData = [
            'firstname' => $input['firstname'],
            'lastname' => $input['lastname'],
            'nrp' => $input['nrp'],
            'email' => $input['email'],
            'whatsapp' => $input['whatsapp'],
            'password' => Hash::make($input['password']),
        ];

        if (!empty($findAlumni->id)) {
            $createData['alumni_id'] = $findAlumni->id;
            $createData['agama'] = $findAlumni->agama;
            $createData['birth_place'] = $findAlumni->birth_place;
            $createData['birth_date'] = $findAlumni->birth_date;
            $createData['phone_home'] = $findAlumni->phone_home;
            $createData['phone_number'] = $findAlumni->phone_number;
            $createData['whatsapp'] = $findAlumni->whatsapp;
            $createData['address'] = $findAlumni->address;
            $createData['provincy'] = $findAlumni->provincy;
            $createData['city'] = $findAlumni->city;
            $createData['zip_code'] = $findAlumni->zip_code;
        }
        $createData['role_id'] = $userRole->id;
        return User::create($createData);
    }
}
