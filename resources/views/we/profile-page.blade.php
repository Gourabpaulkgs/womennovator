@extends('we.layouts.layout') @section('front_content')


  <div class="main-wraper">
    <div class="container">
      <div class="col-sm-10">
        <div class="banner">
          <img src="{{asset('images/profile-banner.png')}}">
        </div>
        <div class="banner-profile">
          <div class="row">
            <div class="col-sm-8">
              <div class="profile-img-lt">
                <div class="profile-img">
                  <img src="{{asset('images/profile-banner.png')}}" style="width: auto;
                  height: 100%;">
                </div>
                <div class="profile-img-title">
                  <h2>{{ $user->name }}</h2>
                  <p>{{ $user->email }}</p>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              @if ($login_id  == ($user->id))
              <div class="profile-img-rt">
                <a href="{{ route('edit.profile') }}" class="edit-profile">Edit Profile</a>
                <a href="#" class="setting" style="align-items:center;">Settings <i class="fa fa-cog" aria-hidden="true"></i></a>
              </div>
              @endif
            </div>
          </div>

        </div>
        <div class="aword-won-sec">
          <div class="row">
            <div class="col-sm-12">
              <div class="aword-head">
                <h2>Awards</h2>
                @if ($login_id  == ($user->id))
                <p>Awards you’ve won so far</p>
                @else
                
                <p> Awards {{ $user->name }} won so far</p>
                @endif
              </div>
            </div>
            <div class="col-sm-4">
              <div class=" aword-box">
                <h2>Best Volunteer of the Month</h2>
                <h3>Lucknow Foodies</h3>
                <p><i class="fa fa-map-marker" aria-hidden="true"></i> Lucknow, UP</p>
                <div class="won-on-sec">
                  <div class="won-on-lt">
                    <p>Won On</p>
                    <span>21-Aug-2021</span>
                  </div>
                  <div class="won-on-rt">
                    <a class="view" href="#"><img src="{{asset('images/view-icon.png')}}"> View</a>
                  </div>

                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class=" aword-box win-more">
                <div>
                  <h4>Win more</h4>
                  <p>You can win more awards and add them here.</p>
                </div>
                <a href="{{ url('we/awards') }}" class="apply-win-btn">Apply to win Awards</a>

              </div>
            </div>
          </div>
          <div class="row">

            <div class="col-sm-12">
              <div class="aword-head">
                @if ($login_id  == ($user->id))
                <h2>Communities you’re part of</h2>
                <p>Communities that you follow.</p>
                @else
                <h2>Communities {{ $user->name }} part of</h2>
                <p>Communities that {{ $user->name }} follow.</p>
                @endif
              </div>
            </div>

            @isset($communities)
              @foreach ($communities as $community)
                <div class="col-sm-4">
                  <div class="flex-div-tc aword-box">
                    <div>
                      <h4>{{ $community->name }}</h4>
                      <p><i class="fa fa-map-marker" aria-hidden="true"></i> {{ $community->city }},
                        {{ $community->country }}</p>
                    </div>
                    <div>
                      <p><i class="fa fa-globe" aria-hidden="true"></i> {{ $community->followers }} Followers</p>
                      <div class="comu-user"><i class="fa fa-star-o" aria-hidden="true"></i> <img
                          src="{{ asset('backEnd/image/community_image/' . $community->logo) }}">{{ $community->led_by }}
                      </div>
                    </div>
                    <div class="won-on-sec">
                      <div class="won-on-lt">
                        {{-- <p>Won On</p> --}}
                        <span>{{ $community->created_at }}</span>
                      </div>
                      @if ($login_id  == ($user->id))
                      <div class="won-on-rt">
                        <a class="view"
                          href="{{ route('we.unfollow_community', ['com_id' => $community->id]) }}"><img
                            src="{{asset('images/cross-icon.png')}}"> Leave</a>
                      </div>
                      @endif

                    </div>
                  </div>
                </div>
              @endforeach
            @endisset
          </div>
        </div>
      </div>
      <div class="col-sm-4"></div>
    </div>

  </div>


@endsection


<!-- eof #box_wrapper -->
<!--</div>-->
<!-- eof #canvas -->
