<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Posts;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        $title = '';
        if (request('category')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }
        if (request('author')) {
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        $data = [
            'title' => 'Posts | Laravel App',
            'brand' => 'Laravel App',
            'page' => ['posts', ''],
            'heading' => 'Posts' . $title,
            'posts' => Posts::latest()->filter(request(['search', 'category', 'author']))->paginate(7)->withQueryString()
        ];

        return view('frontend.posts.index', $data);
    }

    public function detail(Posts $post)
    {
        $data = [
            // 'title' => $arrpost['title'] . ' | Laravel App',
            'title' => 'Post Detail | Laravel App',
            'brand' => 'Laravel App',
            'page' => ['posts', 'detail'],
            'heading' => 'Posts',
            'post' => $post
        ];

        return view('frontend.posts.detail', $data);
    }

    public function category()
    {
        $data = [
            'title' => 'Categories | Laravel App',
            'brand' => 'Laravel App',
            'page' => ['categories', ''],
            'categories' => Category::all()
        ];
        return view('frontend.posts.category', $data);
    }
}
