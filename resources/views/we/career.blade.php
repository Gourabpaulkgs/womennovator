@extends('we.layouts.layout') @section('front_content')
	

<div class="">
                <div class="container">
                    <div class="we-careers">
                    <div class="row">
                        <div class="col-sm-9">
                        
                        <div class="community-ban-cintent we-support-banner">
                            
                            <div class="female-user-content">
                                <h2>WE Careers</h2>
                                <p>Join the robust teams behind Asia’s biggest women run Communities.</p>
                                
                            </div>
                            </div>                            
                        </div>
                        
                    </div>
                    </div>
                </div>
                
                
            </div>
            	
            <section class="section">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7">
                            <div id="Womennovator" class="tabcontent faq-sec ">
                                <h2 class="potion-titles">Open Positions</h2>
                           <div id="faq-accordion" class="panel-group collapse-unstyled">
                                     @foreach($career as $career)
								<div class="panel2">
									<h4> 
                                        <a data-toggle="collapse" data-parent="#faq-accordion" href="#faq-collapse{{$career->id}}" class="collapsed">
                                            <ul class="open-list">
                                                
                                                <li><h2>{{$career->title ??''}}</h2></li>
                                                <li>> {{$career->exp ??''}} Years Experience</li>
                                                <li> {{$career->location ??''}}</li>                                        
                                            </ul>
                                        </a> 
                                    </h4>
									<div id="faq-collapse{{$career->id}}" class="panel-collapse collapse">
										<div class="panel-content"> {!!$career->desc ??''!!}</div>
									</div>
								</div>
								@endforeach
                             
								
								
							</div>
                            </div>
                            
                        </div>
                        <div class="col-sm-1"></div>
                        <div class="col-sm-4">
                            <div class="incubate-form">
                                <h2>Apply</h2>
                                <div class="incubate-form-sec">
                                    <form action="{{url('we/add/career')}}" method="post" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group">                                        
                                            <label>Name*</label>
                                            <input class="form-control" placeholder="Enter Name" name="name" required>
                                        </div>
                                        <div class="form-group">                                        
                                            <label>Role*</label>
                                            <select class="form-control" name="role_id" required>
                                                <option value="">----</option>
                                                @foreach($career1 as $career1)
                                                
                                                <option value="{{$career1->id ??''}}" >{{$career1->title ??''}}</option>
                                               @endforeach
                                            </select>
                                            
                                        </div>
                                        <div class="form-group">                                        
                                            <label>LinkedIn Link</label>
                                            <input class="form-control" placeholder="" name="linkedin_id">
                                        </div>
                                        <div class="form-group">                                        
                                            <label>Resume*</label>
                                            <input type="file" class="form-control" name="resume" accept="application/msword,text/plain, application/pdf"/ required>
                                        </div>
                                        
                                        <button class="btn-continue">Apply</button>
                                    </form>
                                
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
 
 
			@endsection
         
           
		<!-- eof #box_wrapper -->
	<!--</div>-->
	<!-- eof #canvas -->
