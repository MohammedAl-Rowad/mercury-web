@include('layouts.defaults')

{{-- @navBar(['style' => 'grey darken-4 z-depth-5'])
@endnavBar --}}

<section class="mainLogin" id="loginPage">
        <div class="" id="particles-js">
    <!-- <div class="VspaceLogin"></div> -->
    <div class="row fixParticlesIssue">
    <div class="container  flow-text  z-depth-5 hoverable mainResgister ">
       <h1 class="inputs greet white-text" >
          Great to see you again! 
       </h1>
       <div class="row  ">
            <div class="col s12 m12 inputs">
               <div class="col s12 m6 white-text" data-aos="fade-right">
                     <a href="{{route('wlcome')}}" class="btn-floating btn-large waves-effect waves-light deep-orange accent-2 hoverable tooltipped" data-position="top" data-tooltip="Return">
                         <i class="material-icons">arrow_back</i>
                     </a>
                     <a href="/register" class="btn-floating btn-large waves-effect waves-light yellow accent-2 hoverable tooltipped" data-position="top" data-tooltip="register">
                         <i class="material-icons black-text">person_add</i>
                     </a>
               </div>
               <div class="col s12 m6 white-text" data-aos="fade-left">
                     <a class="waves-effect waves-light btn indigo accent-2 z-depth-5 hoverable">Facebook</a>
                     <a class="waves-effect waves-light btn red accent-2 z-depth-5 hoverable">Google +</a>
               </div>
            </div>
         </div>
       <div class="divider"></div>
       <div class="row  loginFormPadding">
          <div class="col s12 m6 white-text ">
             <form action="{{ route('login') }}" class="col s12" method="POST">
                    @csrf
                <div class="row">
                   <div class="input-field col s12 m12" data-aos="flip-down">
                      <i class="material-icons prefix white-text">email</i>
                      <input 
                            id = "email"
                            type = "email"
                            class = "validate white-text"
                            value = "{{ old('email') }}"
                            required
                            name = 'email'
                            autofocus
                            >
                      <label for="email">E-Mail Addredd</label>
                   </div>
                </div>
                <div class="row">
                   <div class="input-field col s12 m12 " data-aos="flip-up">
                      <i class="material-icons prefix white-text">security</i>
                      <input 
                            id = "password" 
                            type = "password" 
                            class = "validate white-text"
                            required
                            name = "password"
                            >
                      <label for="password">Password</label>
                   </div>
                </div>
                <p data-aos="zoom-in-up">
                   <label>
                   <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}/>
                   <span>Remember me?</span>
                   </label>
                </p>
                <button class="btn waves-effect waves-light  z-depth-5 hoverable grey darken-3" type="submit" name="action"
                 > {{ __('Login') }}
                <i class="material-icons right">weekend</i>
                </button>
                {{-- <a class="btn btn-link" href="{{ route('password.request') }}">
                        {{ __('Forgot Your Password?') }}
                </a> --}}
             </form>
          </div>
          <div class="col s12 m6 white-text inputs">
             {{-- <div class="input-field col s12 m6 hide-on-small-only" data-aos="flip-left">
                <img src="{{asset('images/pattren2.png')}}" alt="Login Form" class="login-image   responsive-img">
             </div> --}}
          </div>
       </div>
       <div class="row">
           <div class="col s12 m6">
                @if ($errors->has('email'))
                    <div class="card-panel  red darken-3" data-aos="zoom-out-left">
                        <span class="white-text">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    </div>
                @endif
                
            </div>
            <div class="col s12 m6">
                    @if ($errors->has('password'))
                        <div class="card-panel  red darken-3 " data-aos="zoom-out-up">
                            <span class="white-text">
                                <strong>{{ $errors->first('password') }}</strong>
                            </span>
                        </div>
                    @endif
            </div>
       </div>
    </div>
</div>
</div>
 </section>


@include('layouts.defaultsBottom')




{{-- @section('content')
    <div class="ui grid container">
        <div class="sixteen wide column ">
            <div class="ui  ">
                <div class="content">
                    <div class="center aligned header"><h1>Login</h1></div>
                    <div class="description ui inverted segment">
                        <form method="POST" action="{{ route('login') }}" class="ui form  inverted ">
                            @csrf
                            <div class="field">
                                <label> E-Mail Address</label>
                                <input id="email" type="email" name="email" value="{{ old('email') }}" required
                                       autofocus
                                       placeholder="Enter your email here">
                            </div>
                            <div class="field">
                                <label> Password</label>
                                <input id="password" type="password" name="password" required
                                       placeholder="Enter your password here">
                            </div>
                            <div class="inline field">
                                <input type="checkbox" name="remember" tabindex="0"
                                       class="hidden" {{ old('remember') ? 'checked' : '' }}>
                                <label>Remember Me</label>
                            </div>
                            <button type="submit" class="ui inverted teal  button">
                                {{ __('Login') }}
                            </button>

                            <a class="btn btn-link" href="{{ route('password.request') }}">
                                {{ __('Forgot Your Password?') }}
                            </a>
                        </form>
                    </div>
                </div>
            </div>


            @if ($errors->has('email'))
                <div class="ui red message">
                    <strong>{{ $errors->first('email') }}</strong>
                </div>
            @endif


            @if ($errors->has('password'))
                <div class="ui red message">
                    <strong>{{ $errors->first('password') }}</strong>
                </div>
            @endif

        </div>
        <div class="sixteen wide column">
            <h3>Thank you for joining us</h3>
            <img src="{{ asset('images/pattren2.png') }}" alt="Login image" class="ui image fluid">
            <a rel="nofollow" href="https://www.vecteezy.com" target="_blank">Free Vector Design by: www.Vecteezy.com</a>
        </div>
    </div>
@endsection --}}