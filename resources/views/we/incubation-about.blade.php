@extends('we.layouts.layout') @section('front_content')
	
 <div class="community-banner incubation-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8">
                        
                        <div class="community-ban-cintent">
                            <div class="female-user">
                                <img src="images/femail-img-wt.png">
                            </div>
                            <div class="female-user-content">
                                <h2>Womennovator Incubation <br>Programme 2022</h2>
                                <ul class="communi-list">
                                    <li>Get your startup incubated with award winning teams that’ve led 100s of early stage startups through Angel and Series A rounds. </li>
                                </ul>
                            </div>
                            </div>
                            <nav class="comunity-nav">
                                <ul>
                                    <li><a  href="{{ url('we/incubation') }}">Home</a></li>
                                    <li><a href="{{ route('incubation.success')}}">Success Stories</a></li>
                                    <li><a class="active"  href="#">About</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--<div class="col-sm-3">
                            <a href="#" class="join-btn">Join this community</a>
                            <div class="lead-by">
                            <p>Led by </p>
                                <div class="team-user">
                                    <a class="team-img" href="#"><img src="./images/user.jpg"></a>
                                    <div class="team-user-title">
                                        <h5>Silviya Plath</h5>
                                        <span class="sub-dis">CEO, StartupPath</span>
                                    </div>                                                
                                </div>
                            
                            </div>
                        </div>-->
                    </div>
                </div>
                
                
</div>
<section class="incubation-about-section">
    <center>
        <strong>
            <h1 class="story-heading">
                About
            </h1>
        </strong>
    </center>
    <div class="incubation-about">

        <div class="incubation-about-content">
            <h3>BUILD THE BUSINESS OF YOUR DREAMS</h3>
            <p><span style="color: rgb(170, 59, 133); font-weight:500">10-week Practicing Entrepreneurship program</span>
                helps you determine which idea pairs your passion
                and expertise and meaningfully maps with the
                market opportunities. PITCH WEEK! At the end of
                the journey, you <b>meet the sharks</b> who are ready to
                hear your pitches. The best part is yet to come!
                <br><br>
                Once you are part of the WE-community, you will
                meet many more female entrepreneurs,
                professionals, and even social activist – <b>it’s time to
                connect and work together.</b></p>
        </div>
        <div class="incubation-about-images ">
            <div class="about-img">
                <a href="/Slide1.PNG" target="_blank"> <img src="{{ url('we/Slide1.PNG') }}" alt=""></a>
            </div>
            <div class="about-img">
                <a href="/Slide2.PNG" target="_blank"> <img src="{{ url('we/Slide2.PNG') }}" alt=""></a>
            </div>
            <div class="about-img">
                <a href="/Slide3.PNG" target="_blank"> <img src="{{ url('we/Slide3.PNG') }}" alt=""></a>
            </div>
            <div class="about-img">
                <a href="/Slide4.PNG" target="_blank"> <img src="{{ url('we/Slide4.PNG') }}" alt=""></a>
            </div>
            <div class="about-img">
                <a href="/Slide5.PNG" target="_blank"> <img src="{{ url('we/Slide5.PNG') }}" alt=""></a>
            </div>
            <div class="about-img">
                <a href="/Slide6.PNG" target="_blank"> <img src="{{ url('we/Slide6.PNG') }}" alt=""></a>
            </div>
        </div>
    </div>
</section>
@endsection