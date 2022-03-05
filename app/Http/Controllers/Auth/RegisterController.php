<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Foundation\Auth\Users;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\Newusermail;
use App\Mail\HeretoGivesupport;
use App\Mail\HeretoSeeksupport;
use Carbon\Carbon;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;


//use Illuminate\Auth\Listeners\SendEmailVerificationNotification;

use session;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth:admin');
    // }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */


    // * Signup First step
    public function insert(Request $request)
    {

        $request->validate([
            "name" => "required",
            "email" => "required|email|unique:users,email",
            "password" => "required"
        ]);

        $name = $request->name;
        $email = $request->email;
        $password = $request->password;

        $check =  DB::table('users')->insert([
            'name' => $name,
            'email' => $email,
            'password' => Hash::make($password),
            'is_email_verified' => 0
        ]);

        $countries = DB::table('countries')->get();
        $data = [
            "name" => $name,
            "email" => $email,
            "countries" => $countries,
            "email_verify_warning" => true
        ];

        if ($check) {
            $user_detail = ['user_name' => $name, 'user_email' => $email];    // This will send to view
            $user['to'] = $email;

            // * Send mail to User for confirmation
            Mail::send('emails.emailconfirmation', $user_detail, function ($messages) use ($user) {
                $messages->to($user['to']);
                $messages->subject("Activate Account");
            });

            return view('we.signup-step-2', $data);
        } else {
            return redirect()->back()->with("fail", "Registration Failed");
        }
    }


    // * Signup Second step
    public function insertsignup(Request $request)
    {

        $request->validate([
            "mobile" => "required|digits:10",
            "gender" => "required",
            "country" => "required",
            "city" => "required",
        ]);

        $name = $request->name;
        $email = $request->email;
        $mobile = $request->mobile;
        $gender = $request->gender;
        $country = $request->country;
        $city = $request->city;

        $check = DB::table('users')->where(['email' => $email])->update([
            'phone' => $mobile,
            'gender' => $gender,
            'country' => $country,
            'city' => $city
        ]);

        $sectors = DB::table('sectors')->get();
        $data = [
            "name" => $name,
            "email" => $email,
            "sectors" => $sectors,
            "email_verify_warning" => true
        ];

        if ($check) {
            return view('we.signup-step-3', $data);
        } else {
            return redirect()->back()->with("fail", "Registration Failed");
        }
    }

    // * Signup Third step
    public function signupstep3(Request $request)
    {

        $name = $request->name;
        $email = $request->email;
        $companyname = $request->companyname;
        $designation = $request->designation;
        $experience = $request->experience;
        $industrytype = $request->industrytype;
        $facebook = $request->facebook;
        $highestqualification = $request->highestqualification;
        $hereto = $request->hereto;

       $check = DB::table('users')->where(['email' => $email])->update([
            'companyname' => $companyname,
            'designation' => $designation,
            'experience' => $experience,
            'hereto' => $hereto,
            'highestqualification' => $highestqualification,
            'industrytype' => $industrytype,
            'facebook' => $facebook,
        ]);

        $data1 = array(
            'name' => $name,
            'email' => $email,
        );

        if ($request->hereto == 'givesupport') {
            Mail::to($request->email)->send(new HeretoGivesupport($data1));
        } else {
            Mail::to($request->email)->send(new HeretoSeeksupport($data1));
        }

        if($check){
            return redirect('we/login');
        }
        else{
            return redirect()->back()->with("fail", "Registration Failed");
        }
    }

    public function verifymail(Request $request)
    {
        $data = $request->except(['_token']);
        //$users = DB::table('users')->latest('email')->first(); 
        dd($data);
        //   foreach ($users as $user ) {
        //     dd($users);
        //     // $emailconfirmation =  DB::table('users')->where('email',$users->email)
        //     // ->pluck('email')->first();
        //     // dd($emailconfirmation);

        //     $data = array(
        //         'subject' => "Email Confirmation",
        //         'email' =>   '$emailconfirmation',
        //    );

        //     Mail::send('emails.emailconfirmation', $data, function ($msg) use($data){
        //         $msg->to($data['email']);
        //         $msg->from('ashish@capitall.io');
        //         $msg->subject($data['subject']);
        //      }); 
        //      dd('done');
        // }    
    }

    public function verifyaccount(Request $request, $email)
    {
        DB::table('users')->where(['email' => $email])->update([
            'email_verified_at' => Carbon::now(),
            'is_email_verified' => 1
        ]);
        return redirect('we/login')->with('success', 'Email Verification Successfull');
    }
}
