@extends('we.layouts.layout') @section('front_content')

  <div class="community-banner">
    <div class="container">
      <div class="row">
        <div class="col-sm-9">

          <div class="community-ban-cintent">
            <div class="female-user">
              <img src="{{ asset('backEnd/image/community_image/' . $community->logo) }}">
            </div>
            <div class="female-user-content">
              <h2>{{ $community->name }}</h2>
              <ul class="communi-list">
                <li><a href=""><i class="fa fa-map-marker" aria-hidden="true"></i>{{ $community->city }}</a></li>
                <li><a href=""><i class="fa fa-globe" aria-hidden="true"></i>{{ $community->followers }}</a></li>
              </ul>
            </div>
          </div>
          <nav class="comunity-nav">
            <ul>
              <li><a href="{{ url('community/' . $community->id) }}">Home</a></li>
              <li><a href="{{ url('community/events/' . $community->id) }}">Events</a></li>
              @if (session()->has('FRONT_USER_LOGIN_ID'))
                 <li><a href="{{ url('community/members/' . $community->id) }}">Members</a></li>
              @endif
              <li><a href="{{ route('community.about', ['com_id' => $community->id]) }}">About</a></li>
            </ul>
          </nav>
        </div>
        <div class="mb-3">
          @if (session()->has('msg'))
            <p style="color: rgb(0, 182, 0); font-weight: bold;"> {{ session('msg') }}</p>
          @endif
        </div>
        <div class="col-sm-3">
          @if (session()->has('FRONT_USER_LOGIN_ID'))
            @if ($followed)
              <a href="{{ route('we.unfollow_community', ['com_id' => $community->id]) }}"
                class="join-btn">Unfollow</a>
            @else
              <a href="{{ route('we.join_community', ['com_id' => $community->id]) }}" class="join-btn">Join this
                community</a>
            @endif
          @else
            <a href="{{ route('we.login') }}" class="join-btn">Join this community</a>
          @endif
          {{-- <a href="{{ route('we.join_community', ['com_id' => $community->id]) }}" class="join-btn">Join this
            community</a> --}}


          <div class="lead-by">
            <p>Led by </p>
            <div class="team-user">
              <a class="team-img" href="#"><img
                  src="{{ asset('backEnd/image/community_image/' . $community->logo) }}"></a>
              <div class="team-user-title">
                <h5>{{ $community->led_by }}</h5>
                <span class="sub-dis">{{ $community->industry }}</span>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>


  </div>
  <section class="section">
    <div class="container">

      {{-- All Normal Events --}}
      @if($normal_event->count() == 0 and $we_pitch->count() == 0 and $round_table->count() == 0)
              
              <div class="row">
                <p style="text-align: center;">No events are there.</p>
              </div>
      @else
      <div class="row">
        <div class="col-sm-9">
          <div class="post-comi-title">
            <div class="row">
              <div class="col-sm-7">
                <h3>Normal events in this community</h3>
              </div>
              <div class="col-sm-5">
                <div class="text-right">
                  <div class="comunities-header-sec text-left">
                    <ul>

                      <li>
                        <span class="sort-by-text">Sort by</span>
                        <select class="select sort-by">
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-sm-7">
              
                @foreach ($normal_event as $event)
                  <a href="#">
                    <div class="post to_animate" data-animation="fadeInUp">
                      <div>
                        <div class="community-ban-cintent">
                          <div class="female-user">
                            <img src="{{ asset('backEnd/image/community_image/' . $community->logo) }}">>
                          </div>
                          <div class="female-user-content">
                            <h2>{{ $community->name }}</h2>
                            <ul class="communi-list">
                              <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 19 mins</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="img-post">
                          <img src="{{ asset('we/images/' . $event->normal_event_poster) }}">
                        </div>
                        <div class="post-title">

                          <div class="row">
                            <div class="col-sm-7">
                              <h3>{{ $event->normal_event_title }}</h3>
                              <h4>{{ Carbon\Carbon::parse($event->normal_event_start_date)->format('d-m-Y') }} to
                                {{ Carbon\Carbon::parse($event->normal_event_end_date)->format('d-m-Y') }} </h4>
                              <ul class="communi-list">
                                <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i>
                                    {{ Carbon\Carbon::parse($event->normal_event_from)->format('h:i A') }} -
                                    {{ Carbon\Carbon::parse($event->normal_event_to)->format('h:i A') }}</a></li>
                              </ul>
                            </div>
                            <div class="col-sm-5">
                              <div class="post-title-rt-sec">
                                @php
                                  $date_now = date('Y-m-d');
                                @endphp
                                @if ($event->normal_event_start_date >= $date_now)
                                  <p>0 Attending</p>
                                  <a href="{{url('we/event-page/'. $event->id. '/'. $event->type)}}" class="rsvp">RSVP</a>
                                @else
                                  <p>0 Attended</p>
                                @endif
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                @endforeach
             

              {{-- <div class="post to_animate" data-animation="fadeInUp">
                <div class="community-ban-cintent">
                  <div class="female-user">
                    <img src="images/femail-img.png">
                  </div>
                  <div class="female-user-content">
                    <h2>Female Entrepreneurs of Bombay</h2>
                    <ul class="communi-list">
                      <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 19 mins</a></li>
                    </ul>
                  </div>
                </div>
                <div class="img-post">
                  <img src="images/post2.png">
                </div>
                <div class="post-title">
                  <div class="row">
                    <div class="col-sm-7">
                      <h3>Open Mic</h3>
                      <h4>Monday, 05 September, 2021</h4>
                      <ul class="communi-list">
                        <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 12 PM - 1PM</a></li>
                      </ul>
                    </div>
                    <div class="col-sm-5">
                      <div class="post-title-rt-sec">
                        <p>12 Attending</p>
                        <a href="#" class="rsvp">No Bookings</a>
                      </div>

                    </div>
                  </div>
                </div>
              </div> --}}

              {{-- <div class="col-sm-12">
                <div class="text-center">
                  <a href="#" class="show-more">Show more <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                </div>
              </div> --}}
            </div>

            <div class="col-sm-5"></div>
          </div>

        </div>

        {{-- <div class="col-sm-3 ">
          <div class="team to_animate" data-animation="fadeInUp">
            <ul>
              <li>
                <div class="team-user-up">
                  <div class="team-user">
                    <a class="team-img" href="#"><img src="./images/user.jpg"></a>
                    <div class="team-user-title">
                      <h5>Silviya Plath<span class="check-icon"><img src="images/check-icon.png"></span></h5>
                      <span class="sub-dis">Fintech Guru</span>

                    </div>
                  </div>
                  <p>15 years of experience in ed-tech and community service.</p>
                </div>
              </li>

            </ul>
            <div class="entire-team">
              <ul>
                <li><a class="entire-team-list"><img src="./images/user.jpg"></a></li>
                <li><a class="entire-team-list"><img src="./images/user.jpg"></a></li>
              </ul>
              <a href="#" class="entire-text">see entire team</a>
            </div>
          </div>

          <div class="team to_animate" data-animation="fadeInUp">
            <h4>Team</h4>
            <a href="#" class="startuppath">www.startuppath.com <i class="fa fa-angle-right"
                aria-hidden="true"></i></a>
          </div>
          <div class="team to_animate" data-animation="fadeInUp">
            <h4>Share</h4>
            <div class="share-social">
              <ul>
                <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-hashtag" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              </ul>
            </div>
          </div>
        </div> --}}
      </div>
      @endif

      {{-- End of All Normal Events --}}

      {{-- All Round Table Events --}}
      @if($we_pitch->count() > 0)
      <div class="row">
        <div class="col-sm-9">
          <div class="post-comi-title">
            <div class="row">
              <div class="col-sm-7">
                <h3>Round Table events in this community</h3>
              </div>
              <div class="col-sm-5">
                <div class="text-right">
                  <div class="comunities-header-sec text-left">
                    <ul>

                      <li>
                        <span class="sort-by-text">Sort by</span>
                        <select class="select sort-by">
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-sm-7">
              @if ($round_table)
                @foreach ($round_table as $event)
                  <a href="#">
                    <div class="post to_animate" data-animation="fadeInUp">
                      <div>
                        <div class="community-ban-cintent">
                          <div class="female-user">
                            <img src="{{ asset('backEnd/image/community_image/' . $community->logo) }}">>
                          </div>
                          <div class="female-user-content">
                            <h2>{{ $community->name }}</h2>
                            <ul class="communi-list">
                              <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 19 mins</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="img-post">
                          <img src="{{ asset('we/images/' . $event->round_table_poster) }}">
                        </div>
                        <div class="post-title">

                          <div class="row">
                            <div class="col-sm-7">
                              <h3>{{ $event->round_table_title }}</h3>
                              <h4>{{ Carbon\Carbon::parse($event->round_table_start_date)->format('d-m-Y') }} to
                                {{ Carbon\Carbon::parse($event->round_table_end_date)->format('d-m-Y') }} </h4>
                              <ul class="communi-list">
                                <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i>
                                    {{ Carbon\Carbon::parse($event->round_table_from)->format('h:i A') }} -
                                    {{ Carbon\Carbon::parse($event->round_table_to)->format('h:i A') }}</a></li>
                              </ul>
                            </div>
                            <div class="col-sm-5">
                              <div class="post-title-rt-sec">
                                @php
                                  $date_now = date('Y-m-d');
                                @endphp
                                @if ($event->round_table_start_date >= $date_now)
                                  <p>0 Attending</p>
                                  <a href="{{url('we/event-page/'. $event->id. '/'. $event->type)}}" class="rsvp">RSVP</a>
                                @else
                                  <p>0 Attended</p>
                                @endif
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                @endforeach
              @endif

            </div>

            <div class="col-sm-5"></div>
          </div>

        </div>
      </div>
      @endif
      {{-- End ofAll Round Table Events --}}

      {{-- All We Pitch Events --}}
      @if($round_table->count() > 0)
      <div class="row">
        <div class="col-sm-9">
          <div class="post-comi-title">
            <div class="row">
              <div class="col-sm-7">
                <h3>We-Pitch events in this community</h3>
              </div>
              <div class="col-sm-5">
                <div class="text-right">
                  <div class="comunities-header-sec text-left">
                    <ul>

                      <li>
                        <span class="sort-by-text">Sort by</span>
                        <select class="select sort-by">
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                          <option>Most active</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="row">
            <div class="col-sm-7">
              @if ($we_pitch)
                @foreach ($we_pitch as $event)
                  <a href="#">
                    <div class="post to_animate" data-animation="fadeInUp">
                      <div>
                        <div class="community-ban-cintent">
                          <div class="female-user">
                            <img src="{{ asset('backEnd/image/community_image/' . $community->logo) }}">>
                          </div>
                          <div class="female-user-content">
                            <h2>{{ $community->name }}</h2>
                            <ul class="communi-list">
                              <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i> 19 mins</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="img-post">
                          <img src="{{ asset('we/images/' . $event->we_pitch_poster) }}">
                        </div>
                        <div class="post-title">

                          <div class="row">
                            <div class="col-sm-7">
                              <h3>{{ $event->we_pitch_title }}</h3>
                              <h4>{{ Carbon\Carbon::parse($event->we_pitch_start_date)->format('d-m-Y') }} to
                                {{ Carbon\Carbon::parse($event->we_pitch_end_date)->format('d-m-Y') }} </h4>
                              <ul class="communi-list">
                                <li><a href=""><i class="fa fa-clock-o" aria-hidden="true"></i>
                                    {{ Carbon\Carbon::parse($event->we_pitch_from)->format('h:i A') }} -
                                    {{ Carbon\Carbon::parse($event->we_pitch_to)->format('h:i A') }}</a></li>
                              </ul>
                            </div>
                            <div class="col-sm-5">
                              <div class="post-title-rt-sec">
                                @php
                                  $date_now = date('Y-m-d');
                                @endphp
                                @if ($event->we_pitch_start_date >= $date_now)
                                  <p>0 Attending</p>
                                  <a href="{{url('we/event-page/'. $event->id. '/'. $event->type)}}" class="rsvp">RSVP</a>
                                @else
                                  <p>0 Attended</p>
                                @endif
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </a>
                @endforeach
              @endif

            </div>

            <div class="col-sm-5"></div>
          </div>
        </div>
      </div>
      @endif
      {{-- End ofAll We Pitch Events --}}





    </div>
  </section>




@endsection

<!-- eof #box_wrapper -->
<!--</div>-->
<!-- eof #canvas -->
