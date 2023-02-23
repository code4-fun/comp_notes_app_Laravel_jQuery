<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Company;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CompanyController extends Controller {
  public function index() {
    $companies = Company::all()->sortByDesc('id');
    return view('companies.companies', [
      'companies' => $companies
    ]);
  }

  public function create() {
    return view('companies.create');
  }

  public function store(Request $request) {
    $company = new Company();
    $company->name = $request->name;
    $company->inn = $request->inn;
    $company->info = $request->info;
    $company->gendir = $request->gendir;
    $company->address = $request->address;
    $company->phone = $request->phone;
    $company->author_id = Auth::user()->id;
    $company->save();
    return redirect()->route('index');
  }

  public function show($id) {
    $company = Company::find($id);
    if(!$company){
      return redirect()
        ->route('index')
        ->withErrors('Такой страницы не существует');
    } else {
      $comments = Comment::where('comp_id', $id)
        ->orderBy('id')
        ->get();
    }
    return view('companies.show', compact('company', 'comments'));
  }

  public function destroy($id){
    $company = Company::find($id);
    if(!$company){
      return redirect()
        ->route('index')
        ->withErrors('Такой страницы не существует');
    }
    if($company->author_id != Auth::user()->id){
      return redirect()
        ->route('index')
        ->withErrors('Вы не можете удалить данный пост');
    }
    $company->delete();
    return redirect()
      ->route('index')
      ->with('success', 'Пост успешно удален.');
  }
}
