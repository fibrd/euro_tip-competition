<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Hash;
use App\User;
use Socialite;
use \Auth;

class LoginController extends Controller
{
  /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

  use AuthenticatesUsers;


  /**
   * Handle a login request to the application. 
   * 
   * This function extracted from trait AuthenticatesUsers (vendor) 
   * to be able to make customizable flash messages after login
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response|\Illuminate\Http\JsonResponse
   *
   * @throws \Illuminate\Validation\ValidationException
   */
  public function login(Request $request)
  {
    $this->validateLogin($request);

    // If the class is using the ThrottlesLogins trait, we can automatically throttle
    // the login attempts for this application. We'll key this by the username and
    // the IP address of the client making these requests into this application.
    if (
      method_exists($this, 'hasTooManyLoginAttempts') &&
      $this->hasTooManyLoginAttempts($request)
    ) {
      $this->fireLockoutEvent($request);

      return $this->sendLockoutResponse($request);
    }

    if ($this->attemptLogin($request)) {
      // flash()->success('Welcome, ' . Auth::user()->fullname . '!'); 
      session()->flash('flash-message', 'Vítejte, ' . Auth::user()->fullname . '!'); //customizable flash messages after login
      return $this->sendLoginResponse($request);
    }

    // If the login attempt was unsuccessful we will increment the number of attempts
    // to login and redirect the user back to the login form. Of course, when this
    // user surpasses their maximum number of attempts they will get locked out.
    $this->incrementLoginAttempts($request);

    return $this->sendFailedLoginResponse($request);
  }



  /**
   * Where to redirect users after login.
   *
   * @var string
   */
  protected $redirectTo = RouteServiceProvider::HOME;


  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {
    $this->middleware('guest')->except('logout');
  }


  /**
   * Redirect the user to the facebook authentication page.
   *
   * @return \Illuminate\Http\Response
   */
  public function redirectToProvider()
  {
    return Socialite::driver('facebook')->redirect();
  }


  /**
   * Obtain the user information from facebook.
   *
   * @return \Illuminate\Http\Response
   */
  public function handleProviderCallback()
  {
    $oauth_user = Socialite::driver('facebook')->user();

    if ($oauth_user->email == null) {
      flash()->error('Login Error. Your email details have to be provided!');

      return redirect("login/");
    }

    // get user by email or create a new one
    if (!$user = User::whereEmail($oauth_user->email)->first()) {
      $oauth_user->name = explode(' ', $oauth_user->name);

      $user = User::create([
        'firstname' => $oauth_user->name[0],
        'lastname' => $oauth_user->name[1],
        'email' => $oauth_user->email,
        'password' => Hash::make($oauth_user->token),
      ]);
    }

    Auth::login($user, true);

    // redirect home
    flash()->success('Vítejte, ' . Auth::user()->fullname . '!');
    return redirect()->route('home');
  }
}
