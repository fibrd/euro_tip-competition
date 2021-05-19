<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use \Auth;

class PostController extends Controller
{
  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {
    $this->middleware('auth');
  }


  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    $posts = Post::latest()->paginate(10);

    return view('post.index')
      ->withTitle('posts')
      ->withPosts($posts);
  }

  /**
   * Store a newly created post in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    $request->validate([
      'post' => 'required|string|max:200',
    ]);

    Post::create([
      'user_id' => Auth::id(),
      'post' => $request->post,
    ]);

    // Redirect to post page w/ success mess.
    session()->flash('flash-warning', 'Nový příspěvek přidán!');
    return redirect()->route('post.index');
  }

  /**
   * Shows the post before deleting it.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $post = Post::findOrFail($id);

    $this->authorize('delete-post', $post);

    return view('post.delete')
      ->withPost($post);
  }


  /**
   * Remove the specified post from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    $post = Post::findOrFail($id);

    $this->authorize('delete-post', $post);

    $post->delete();

    // Redirect to post page w/ success mess.
    session()->flash('flash-warning', 'Příspěvek byl smazán!');
    return redirect()->route('post.index');
  }
}
