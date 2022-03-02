<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Jury;
use App\Models\Sector;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;


class JuryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    // * Shpw Approved & Pending Jury List
    public function index(Request $request)
    {

        if ($request->pending) {
            $juryDatas  = DB::table('juries')
                ->leftjoin('state_and_city', 'state_and_city.city_id', '=', 'juries.city_id')
                ->leftjoin('sectors', 'sectors.id', '=', 'juries.sector_id')
                ->select('juries.*', 'state_and_city.state_name', 'state_and_city.city_name' ,'sectors.sectorname')
                ->where(['juries.status' => 0])
                ->distinct()
                ->orderBy('juries.id', 'desc')
                ->paginate(10)
                ->withPath('/admin/jury?pending=true');

            return view('backEnd.jury.pending', compact('juryDatas'));
        }

        $juryDatas  = DB::table('juries')
            ->leftjoin('state_and_city', 'state_and_city.city_id', '=', 'juries.city_id')
            ->leftjoin('sectors', 'sectors.id', '=', 'juries.sector_id')
            ->select('juries.*', 'state_and_city.state_name', 'state_and_city.city_name' ,'sectors.sectorname')
            ->where(['juries.status' => 1])
            ->distinct()
            ->orderBy('juries.id', 'desc')
            ->paginate(10);

        return view('backEnd.jury.index', compact('juryDatas'));
    }

    // * Search Jury
    public function search(Request $request)
    {

        $q = $request->q;

        if ($request->pending) {
            if ($q != '') {
                if (strlen($q) < 3) {
                    return view('backEnd.jury.pending')->with('message', 'Type at least 3 characters!');
                }
                $juryDatas = DB::table('juries')
                    ->where('name', 'LIKE', '%' . $q . '%')
                    ->orWhere('email', 'LIKE', '%' . $q . '%')
                    ->where(['status' => 0])
                    ->paginate(10)
                    ->withPath('/admin/jury?pending=true');

                if (count($juryDatas) > 0) {
                    return view('backEnd.jury.pending', compact('juryDatas'));
                }
                return view('backEnd.jury.pending')->with('message', 'No Details found. Try to search again !');
            }
        } else {
            if ($q != '') {
                if (strlen($q) < 3) {
                    return view('backEnd.jury.index')->with('message', 'Type at least 3 characters!');
                }
                $juryDatas = DB::table('juries')
                    ->where('poc_name', 'LIKE', '%' . $q . '%')
                    ->orWhere('poc_email', 'LIKE', '%' . $q . '%')
                    ->where(['status' => 1])
                    ->paginate(10)
                    ->withPath('/admin/jury');

                if (count($juryDatas) > 0) {
                    return view('backEnd.jury.index', compact('juryDatas'));
                }
                return view('backEnd.jury.index')->with('message', 'No Details found. Try to search again !');
            }
        }
    }

    // * Shpw Create Jury Form
    public function create(Request $request)
    {
        $sector = Sector::latest()->get();
        $states = DB::table('state_and_city')->select('state_id', 'state_name')->distinct()->orderby('state_id')->get();
        $logo_required = true;
        return view('backEnd.jury.create', compact('states', 'sector', 'logo_required'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    // public function juryexcelStore(Request $request)
    // {
    //     $request->validate([
    //         'file' => 'required'
    //     ]);

    //     try {
    //         $data = $request->except(['_token']);
    //         $file = $request->file;
    //         $data = $request->except(['_token']);
    //         $dataa = Excel::toArray(new JuryImport, $file);
    //         foreach ($dataa[0] as $key => $value) {

    //             $sectorid   = Sector::where('sectorname', $value['sector'])
    //                 ->pluck('id')->first();

    //             if ($sectorid == NULL) {
    //                 $db['sectorname'] = $value['sector'];
    //                 Sector::insert([
    //                     'sectorname' => $value['sector'],
    //                     'created_at' => date('y-m-d'),
    //                     'updated_at' => date('y-m-d')
    //                 ]);

    //                 $sectorid   = Sector::where('sectorname', $value['sector'])
    //                     ->pluck('id')->first();
    //             }

    //             $stateid   = State::where('statename', $value['state'])
    //                 ->pluck('id')->first();

    //             if ($stateid == NULL) {
    //                 $db['statename'] = $value['state'];
    //                 $data = State::Create($db);

    //                 $stateid   = State::where('statename', $value['state'])
    //                     ->pluck('id')->first();
    //             }

    //             $cityid   = City::where('name', $value['city'])
    //                 ->pluck('id')->first();

    //             if ($cityid == NULL) {
    //                 City::insert([
    //                     'state_id'         => $stateid,
    //                     'name' => $value['city'],
    //                     'created_at' => date('y-m-d'),
    //                     'updated_at' => date('y-m-d')
    //                 ]);
    //                 $cityid   = City::where('name', $value['city'])
    //                     ->pluck('id')->first();
    //             }
    //             Jury::insert([
    //                 'name'         => $value['name'],
    //                 'Ref_by'         => $value['refby'],
    //                 'email'         => $value['email'],
    //                 'mobile_number'         => $value['mobilenumber'],
    //                 'designation' => $value['designation'],
    //                 'fblink' => $value['fblink'],
    //                 'linkedin' => $value['linkedin'],
    //                 'instagram' => $value['instagram'],
    //                 'twitter' => $value['twitter'],
    //                 'company' => $value['company'],
    //                 'industry' => $value['industry'],
    //                 'description' => $value['description'],
    //                 'state_id' =>  $stateid,
    //                 'city_id' =>   $cityid,
    //                 'sector_id' =>  $sectorid,
    //                 'password' => Hash::make('12345678'),
    //                 'created_at' => date('y-m-d'),
    //                 'updated_at' => date('y-m-d')
    //             ]);
    //         }
    //         $output = array('msg' => 'Create Successfully');
    //         return back()->with('success', $output);
    //     } catch (Exception $e) {
    //         DB::rollBack();
    //         Log::emergency("File:" . $e->getFile() . "Line:" . $e->getLine() . "Message:" . $e->getMessage());
    //         report($e);
    //         $output = array('msg' => $e->getMessage());
    //         return back()->withErrors($output)->withInput();
    //     }
    // }


    // * Store Jury
    public function store(Request $request)
    {
        $request->validate([
            "name" => "required",
            "email" => "required|email|unique:juries,email",
            "mobile_number" => "required",
            "designation" => "required",
            "photo" => "required",
            "state" => "required",
            "city" => "required",
            "sector_id" => "required",
            "company" => "required",
            "industry" => "required",
            "fblink" => "required",
        ]);

        $name = $request->name;
        $email = $request->email;
        $mobile_number = $request->mobile_number;
        $state_id = $request->state;
        $city_id = $request->city;
        $sector_id = $request->sector_id;
        $company = $request->company;
        $industry = $request->industry;
        $designation = $request->designation;
        $fblink = $request->fblink;
        $linkedin = $request->linkedin;
        $instagram = $request->instagram;
        $twitter = $request->twitter;
        $description = $request->description;
        $status = 1;
        $is_fillup = 1;

        if ($request->hasfile('photo')) {
            $image = $request->file('photo');
            $extension = $image->extension();
            $photo = uniqid("", true) . "." . $extension;
        }

        $res = DB::table('juries')->insert([
            "name" => $name,
            "email" => $email,
            "mobile_number" => $mobile_number,
            "state_id" => $state_id,
            "city_id" => $city_id,
            "sector_id" => $sector_id,
            "company" => $company,
            "designation" => $designation,
            "photo" => $photo,
            "industry" => $industry,
            "fblink" => $fblink,
            "linkedin" => $linkedin,
            "instagram" => $instagram,
            "twitter" => $twitter,
            "description" => $description,
            "status" => $status,
            "is_fillup" => $is_fillup,
        ]);

        if ($res) {

            $jury_detail = ['jury_name' => $name, 'jury_email' => $email];    // This will send to view
            $user['to'] = $email;

            // * Send mail to Jury
            Mail::send('backEnd.jury.mail_send_jury_create', $jury_detail, function ($messages) use ($user) {
                $messages->to($user['to']);
                $messages->subject("Jury Approved");
            });

            if ($photo) {
                $image->move('we/jury/', $photo);
            }
            $output = array('msg' => 'Jury Created Successfully');
            return redirect('admin/jury')->with('success', $output);
        } else {
            $output = array('msg' => 'Jury Can not be Created');
            return redirect('admin/jury')->with('fail', $output);
        }
    }

    // * Shpw Edit Jury form
    public function edit($id = '')
    {

        $sector = Sector::latest()->get();
        $states = DB::table('state_and_city')->select('state_id', 'state_name')->distinct()->orderby('state_id')->get();
        $jury = DB::table('juries')->where(['id' => $id])->first();
        $cities =  DB::table('state_and_city')->select('city_id', 'city_name')->where(['state_id' => $jury->state_id])->get();
        return view('backEnd.jury.edit', compact('id', 'jury', 'states', 'cities', 'sector'));
    }


    // * Update Jury
    public function update(Request $request, $id = '')
    {
        $request->validate([
            "name" => "required",
            "email" => "required|email|unique:juries,email," . $id,
            "mobile_number" => "required",
            "designation" => "required",
            "state" => "required",
            "city" => "required",
            "sector_id" => "required",
            "company" => "required",
            "industry" => "required",
            "fblink" => "required",
        ]);

        $name = $request->name;
        $email = $request->email;
        $mobile_number = $request->mobile_number;
        $state_id = $request->state;
        $city_id = $request->city;
        $sector_id = $request->sector_id;
        $company = $request->company;
        $industry = $request->industry;
        $designation = $request->designation;
        $fblink = $request->fblink;
        $linkedin = $request->linkedin;
        $instagram = $request->instagram;
        $twitter = $request->twitter;
        $description = $request->description;


        $old_image = DB::table('juries')->where(['id' => $id])->select('photo')->first();

        if ($request->hasfile('photo')) {

            $destination = "we/jury/" . $old_image->photo;
            if (File::exists($destination)) {
                File::delete($destination);
            }

            $image = $request->file('photo');
            $extension = $image->extension();
            $photo = uniqid("", true) . "." . $extension;

            $res = DB::table('juries')->where(['id' => $id])->update([
                "name" => $name,
                "email" => $email,
                "mobile_number" => $mobile_number,
                "state_id" => $state_id,
                "city_id" => $city_id,
                "sector_id" => $sector_id,
                "company" => $company,
                "designation" => $designation,
                "photo" => $photo,
                "industry" => $industry,
                "fblink" => $fblink,
                "linkedin" => $linkedin,
                "instagram" => $instagram,
                "twitter" => $twitter,
                "description" => $description,
            ]);
        } else {
            $photo = '';
            $res = DB::table('juries')->where(['id' => $id])->update([
                "name" => $name,
                "email" => $email,
                "mobile_number" => $mobile_number,
                "state_id" => $state_id,
                "city_id" => $city_id,
                "sector_id" => $sector_id,
                "company" => $company,
                "designation" => $designation,
                "industry" => $industry,
                "fblink" => $fblink,
                "linkedin" => $linkedin,
                "instagram" => $instagram,
                "twitter" => $twitter,
                "description" => $description,
            ]);
        }

        if ($res) {
            if ($photo) {
                $image->move('we/jury/', $photo);
            }

            $output = array('msg' => 'Jury Updated Successfully');
            if ($request->pending) {
                return redirect('admin/jury?pending=true')->with('success', $output);
            }
            return redirect('admin/jury')->with('success', $output);
        } else {
            $output = array('msg' => 'Jury Can not be Updated');
            if ($request->pending) {
                return redirect('admin/jury?pending=true')->with('fail', $output);
            }
            return redirect('admin/jury')->with('fail', $output);
        }
    }

    // * Delete Jury
    public function destroy($id = '')
    {
        $old_image = DB::table('juries')->where(['id' => $id])->select('photo')->first();

        $destination = "we/jury/" . $old_image->photo;
        if (File::exists($destination)) {
            File::delete($destination);
        }

        $res = DB::table('juries')->where(['id' => $id])->delete();
        if ($res) {
            $output = array('msg' => 'Jury Deleted Successfully');
            return redirect('admin/jury')->with('success', $output);
        } else {
            $output = array('msg' => 'Jury Can not be Deleted');
            return redirect('admin/jury')->with('fail', $output);
        }
    }


    // * Jury Member Approve
    public function approve($id = '')
    {
        $jury_data = DB::table('juries')->where(['id' => $id])->select('name', 'email', 'provider_id')->first();
        $provider = $jury_data->provider_id;
        $provider_data = DB::table('users')->where(['id' => $provider])->select("name", "email")->first();

        $jury_name = $jury_data->name;
        $jury_email = $jury_data->email;
        $provider_name = $provider_data->name;
        $provider_email = $provider_data->email;
        $temp_id = rand(111111111, 999999999);
        $check = DB::table('juries')->where(['id' => $id])->update([
            "status" => 1,
            "is_fillup" => 0,
            "temp_id" => $temp_id
        ]);

        if ($check) {

            DB::table('community_and_jury')->where(['jury_id' => $id])->update([
                "status" => 1
            ]);

            $jury_detail = ['jury_name' => $jury_name, 'temp_id' => $temp_id];    // This will send to view
            $provider_detail = ['jury_name' => $jury_name, 'provider_name' => $provider_name, 'temp_id' => $temp_id];    // This will send to view

            $user1['to'] = $jury_email;
            $user2['to'] = $provider_email;

            // * Send mail to Jury
            Mail::send('backEnd\jury\mail_send_jury', $jury_detail, function ($messages) use ($user1) {
                $messages->to($user1['to']);
                $messages->subject("Further Jury Details");
            });

            // * Send mail to provider aka community_creator
            Mail::send('backEnd\jury\mail_send_provider', $provider_detail, function ($messages) use ($user2) {
                $messages->to($user2['to']);
                $messages->subject("Further Jury Details");
            });

            $output = array('msg' => 'Jury Member Approved');
            return redirect('admin/jury')->with('success', $output);
        } else {
            $output = array('msg' => 'Jury Member cannot be Approved');
            return redirect('admin/jury')->with('fail', $output);
        }
    }
}
