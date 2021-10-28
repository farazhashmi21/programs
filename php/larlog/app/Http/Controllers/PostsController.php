<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\PostModel;
// use DB; For Database Queries.
class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function goBack($url){
      return redirect($url);
    }
    public function index()
    {
//      $dataReturn = PostModel::orderBy('title','desc')->get();
//      $dataReturn = DB::select("Select id, Title, body, created_at from post_models");
//      $dataReturn = PostModel::orderBy('title','desc')->take(10)->get();
      $dataReturn = PostModel::orderBy('id','desc')->paginate(10);
      return view('Lare/posts')->with('posts',$dataReturn);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('showroom.post_create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Continue Video for (12:32)
        // https://laravelcollective.com/
        $collectData = array(
            'Post_Title' => ($request->input('title')),
            'Post_Article' => ($request->input('post'))
        );
        $post = new PostModel();
        $post->Title = $collectData['Post_Title'];
        $post->body = $collectData['Post_Article'];
        $post->save();
//        return redirect("/posts");
        PostsController::goBack("/posts");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $singlwPost = PostModel::find($id);
      return view('Lare.single')->with('Post',$singlwPost);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $findPost = PostModel::find($id);
        return view('Lare.edit')->with('displayPost',$findPost);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $postModify = PostModel::find($id);
        $postModify->Title = $request->input('title');
        $postModify->body = $request->input('post');
        $postModify->save();
        return redirect('/posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $getPost = PostModel::find($id);
        $getPost->delete();
        return redirect('/posts');
    }
}
