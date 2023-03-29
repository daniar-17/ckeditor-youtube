<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Test;
use Illuminate\Support\Facades\DB;

class EditorController extends Controller
{
    public function data()
    {
        $datas = DB::table('test_editor')->get();
        return view('test', compact('datas'));
    }

    public function insert()
    {
        return view('insert');
    }

    public function edit($id)
    {
        $datas = DB::table('test_editor')->where('id', $id)->first();
        return view('test_edit', compact('datas'));
    }

    public function lihat($id)
    {
        $datas = DB::table('test_editor')->where('id', $id)->first();
        return view('lihat', compact('datas'));
    }

    public function store(Request $request)
    {
        // insert data ke table pegawai
        Test::create([
            'title' => $request->title,
            'description' => $request->description
        ]);

        // alihkan halaman ke halaman pegawai
        return redirect('/data');
    }

    public function upload(Request $request)
    {
        if($request->hasFile('upload')){
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName . '_' . time() . '.' . $extension;

            $request->file('upload')->move(public_path('media'), $fileName);
            $url = asset('media/' .$fileName);
            return response()->json(['fileName' => $fileName, 'uploaded' => 1, 'url' => $url]);
        }
    }
}
