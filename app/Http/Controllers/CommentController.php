<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller {

  public function show($id) {
    $comment = Comment::find($id);
    if(!$comment){
      return redirect()
        ->route('index')
        ->withErrors('Такой страницы не существует');
    }
    return view('comments.show_comment', compact('comment'))->render();
  }

  public function create(Request $request) {
    return view('comments.create_comment', [
      'companyId'=>$request->companyId,
      'fieldName'=>$request->fieldName
    ])->render();
  }

  public function store(Request $request) {
    $comment = new Comment();
    $comment->comment = $request->comment;
    $comment->comp_column = $request->fieldName;
    $comment->comp_id = $request->companyId;
    $comment->author_id = Auth::user()->id;
    $comment->save();
    return view('comments.store_comment', [
      'comment'=>$comment
    ])->render();
  }


  public function destroy($id){
    $comment = Comment::find($id);
    if(!$comment){
      return redirect()
        ->route('index')
        ->withErrors('Такой страницы не существует');
    }
    return $comment->delete();
  }
}
