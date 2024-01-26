<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;
use illuminate\Support\Str;


class adminPostsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // dd(Posts::all());
        if (auth()->user()->is_admin == 1) {
            $data = [
                'title' => 'Manage Posts | Laravel',
                'page' => 'posts',
                'brand' => 'Laravel App',
                'posts' => Posts::all()
            ];
        } else {
            $data = [
                'title' => 'Manage Posts | Laravel',
                'page' => 'posts',
                'brand' => 'Laravel App',
                'posts' => Posts::where('user_id', auth()->user()->id)->get(),
            ];
        }
        return view('backend.posts.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data = [
            'title' => 'Add Post | Laravel',
            'page' => 'posts',
            'brand' => 'Laravel App',
            'categories' => Category::all(),
        ];

        return view('backend.posts.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // ddd($request);
        // save to path
        // return $request->file('image')->store('post-images');
        $dataValidation = $request->validate([
            'title' => ['required', 'max:255'],
            'slug' => ['required', 'unique:posts'],
            'category_id' => ['required'],
            'image' => ['image', 'file', 'max:1024'],
            'body' => ['required'],
        ]);

        if ($request->file('image')) {
            $dataValidation['image'] = $request->file('image')->store('post-images');
        }

        $dataValidation['user_id'] = auth()->user()->id;
        $dataValidation['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Posts::create($dataValidation);

        return redirect('/dashboard/posts')->with('success', 'Posts Created!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Posts $post)
    {
        $data = [
            'title' => 'Detail Posts | Laravel',
            'page' => 'posts',
            'brand' => 'Laravel App',
            'post' => $post,
        ];
        return view('backend.posts.detail', $data);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Posts $post)
    {
        $data = [
            'title' => 'Edit Post | Laravel',
            'page' => 'posts',
            'brand' => 'Laravel App',
            'categories' => Category::all(),
            'post' => $post,
        ];

        return view('backend.posts.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Posts $post)
    {
        $dataValidation = [
            'title' => ['required', 'max:255'],
            'category_id' => ['required'],
            'image' => ['image', 'file', 'max:1024'],
            'body' => ['required'],
        ];

        if ($request->slug != $post->slug) {
            // dd(true);
            $dataValidation['slug'] = 'required|unique:posts';
        }


        $validated = $request->validate($dataValidation);

        if ($request->file('image')) {
            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }
            $validated['image'] = $request->file('image')->store('post-images');
        }

        $dataValidation['user_id'] = auth()->user()->id;
        $dataValidation['excerpt'] = Str::limit(strip_tags($request->body), 200);


        Posts::where('id', $post->id)
            ->update($validated);

        return redirect('/dashboard/posts')->with('success', 'Posts Updated!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Posts $post)
    {
        if ($post->image) {
            Storage::delete($post->image);
        }
        Posts::destroy($post->id);

        return redirect('/dashboard/posts')->with('success', 'Posts Deleted !');
    }

    public function createSlug(Request $request)
    {
        $slug = SlugService::createSlug(Posts::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }
}
