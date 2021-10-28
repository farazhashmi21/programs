<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;

class Comments extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $getAllComments = Comment::all();
      return view('showroom.allComments')->with('commentsList',$getAllComments);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('showroom.add_comments');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $getUserComment = ($request->input('Comment'));
//        return print_r($getUserComment,TRUE);
        $saveComment = new Comment();
        $saveComment->Comment = $getUserComment;
//        return print_r($saveComment,TRUE);
        $saveComment->save();
        return redirect('/comments');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $getCommentDetails = Comment::find($id);
      return view('showroom.singleComment')->with('details',$getCommentDetails);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $getComment = Comment::find($id);
//        return view('showroom.editComment')->with('comment',$getComment);
        return view('showroom.editComment')->with('comment',$getComment);
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
        $modifyComment = Comment::find($id);
        $modifyComment->Comment = $request->input('user_comment');
        $modifyComment->save();
        return (redirect('/comments'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $c = new Comment();
        $c->find($id)->delete();
        return (redirect('/comments'));
        /**
        $removeComment = Comment::find($id);
        $removeComment->delete();
        return redirect('/comments');
        **/
    }
}
