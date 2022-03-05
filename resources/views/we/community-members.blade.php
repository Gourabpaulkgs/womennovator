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
                <li><a href="#">Members</a></li>
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
          @if ($creater)
            <a href="{{ route('we.community_setting', ['com_id' => $community->id]) }}" class="join-btn"><i
                class="fa fa-cog" aria-hidden="true"></i> Community Settings</a>
          @else
            @if (session()->has('FRONT_USER_LOGIN_ID'))
              @if ($followed)
                <a href="{{ route('we.unfollow_community', ['com_id' => $community->id]) }}"
                  class="join-btn">Unfollow</a>
              @else
                <a href="{{ route('we.join_community', ['com_id' => $community->id]) }}" class="join-btn">Join
                  this
                  community</a>
              @endif
            @else
              <a href="{{ route('we.login') }}" class="join-btn">Join this community</a>
            @endif
          @endif



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
    <div class="container display-flex">
      <div class="row" style="flex: auto;">
        <div class="col-sm-9">
          <div class="post-comi-title">
            <div class="row display-flex">
              <div class=" ">
                <ul class="post-list display-flex"
                  style="padding: 0 !important; width: max-content; align-items: center;">
                  <li class="">
                    <a href="#1" aria-controls="1" role="tab" data-toggle="tab" style="pointer-events: none;">Members</a>
                  </li>
                  @if ($creater)
                    <li class="invite-candidates" id="invite_candid" style="cursor: pointer; text-decoration: underline;">

                      <p id="open-candidate-modal">+ Invite candidates</p>

                    </li>
                  @endif
                  <li class="search-candidates display-flex ">
                    <input type="text" placeholder="Search">
                    <i class="fas fa-search"></i>
                  </li>

                </ul>
              </div>
              {{-- <div class="col-sm-5">
                <div class="text-right">
                  <div class="comunities-header-sec text-left">
                    <ul>
                      <li class="display-flex" style="justify-content: center; align-items: center;">
                        <span class="sort-by-text" style="width: max-content;">Sort by</span>
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
              </div> --}}
            </div>
          </div>

          <div class="row">

            <div class=" " style="width: auto !important;">
              <div class="members-list-section">
                @if (session()->has('success'))
                  <div class="alert alert-success">{{ session('success') }}</div>
                @elseif(session()->has('fail'))
                  <div class="alert alert-danger">{{ session('fail') }}</div>
                @endif
                <ul>
                  @if (empty($members))
                    :

                    <div class="row">
                      {{-- <div class="img-post" > --}}
                      <center>
                        <img src="{{ asset('we/images/no-data.jpg') }}" style="height: 28vw !important">
                        {{-- </div> --}}
                      </center>
                      {{-- <p style="text-align: center;">No Member In this Community.</p> --}}
                    </div>
                  @else
                    @foreach ($members as $member)
                      <li class="display-flex member-li">
                        <p class="member-name">
                          <a href="{{ url('profile/' . $member->id) }}">
                            {{ $member->name }}</a>
                        </p>
                        <p class="px-3 " style="color: #757575;">
                          {{ $member->designation }}</p>
                        {{-- <p class="last-active px-3">Last active 34 mins</p> --}}
                        @if ($creater)
                          <p class="px-3 member-option"><i class="fa-solid fa-ellipsis-vertical"></i></p>
                          <div class="option-modal" id="option-modal">
                            <ul>
                              <li>
                                <form action="{{ route('we.add_volunteer') }}" method="post" id="volunteer_form">
                                  @csrf
                                  <input type="hidden" name="com_id" id="com_id" value="{{ $community->id }}">
                                  <input type="hidden" name="member_id" id="member_id" value="{{ $member->id }}">
                                  <input type="submit" class="view" value="Add as Volunteer" style="background: transparent;
                                            color: black; font-size:0.8rem;">
                                </form>
                              </li>
                              <li><a class="view" style="color: black; font-weight: 400; font-size: 0.8rem;}"
                                  href="{{ route('remove.from_community', ['com_id' => $community->id, 'user_id' => $member->id]) }}">Remove
                                  from Community</a></li>
                            </ul>
                          </div>
                        @endif
                      </li>
                    @endforeach
                  @endif

                  {{-- <li class="display-flex member-li">
                    <p class="member-name">
                      Atul Ahlawat
                    </p>
                    <p class="px-3 " style="color: #757575;">Social Worker</p>
                    <p class="joined-on px-3">Joined Jan 28th</p>
                    <p class="px-3 member-option"><i class="fa-solid fa-ellipsis-vertical"></i></p>
                    <div class="option-modal">
                      <ul>
                        <li>Add a role</li>
                        <li>Remove from Community</li>
                      </ul>
                    </div>
                  </li> --}}
                </ul>
              </div>
            </div>

            <div role="tabpanel" class="tab-pane" id="2"></div>
          </div>

          <div class="col-sm-5"></div>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="volunteers-box">
          <h3>Volunteers</h3>
          <a href="">+ Invite someone to volunteer</a>
        </div>
        <div class="volunteers-box">
          <h3>Share</h3>
          <a href="">+ Invite someone to volunteer</a>
        </div>
      </div>
    </div>

  </section>
  <div class="add-candidates-modal hide" id="add-candidates-modal">
    <div class="candidate-modal">
      <button id="close-candidate-modal" style="z-index: 10000; color:grey;"><i class="fas fa-close"></i></button>
      <h1>Bulk invitation for this event</h1>
      <p>Kindly upload a Excel file in this format</p>
      <br>
      <br>
      <label for="invite-candidate"> <span>Upload the Excel File</span></label>
      <input type="file" name="invite-candidate" id="invite-candidate" accept=".xlsx" placeholder="upload">
      <div id="file_name" style="color: black; margin-top: -3vw;"></div>
      <br>
      <br>
      <input class="btn btn-send-invite" type="button" value="Send invite">
    </div>
  </div>
  <script>
    let optionBtn = document.getElementsByClassName("member-option");
    let optionModal = document.getElementsByClassName("option-modal");


    for (let i = 0; i <= optionBtn.length; i++) {
      optionBtn[i].addEventListener('click', function() {
        optionModal[i].classList.toggle("show");
      });
    }
  </script>

  <script>
    var CloseCandidate = document.getElementById("close-candidate-modal");
    var candidateModal = document.getElementById("add-candidates-modal");
    var openCandidate = document.getElementById("invite_candid");
    openCandidate.addEventListener('click', () => {
      var full = document.body.scrollHeight;
      // console.log(full)
      candidateModal.style.height = full;

      candidateModal.classList.remove("hide");
      candidateModal.classList.add("show");
    })
    CloseCandidate.addEventListener('click', () => {
      candidateModal.classList.remove("show");
      candidateModal.classList.add("hide");
    })
  </script>

  <script>
    let Input = document.getElementById("invite-candidate");

    let file_text = document.getElementById("file_name");

    Input.addEventListener("change", function getFile(event) {

      file_text.innerHTML = " ";

      let file_name = event.target.files[0].name;

      file_text.innerHTML = `Selected File: <b>${file_name}</b>`;

    })
  </script>


@endsection



<!-- eof #box_wrapper -->
<!--</div>-->
<!-- eof #canvas -->
