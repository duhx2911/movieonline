<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\Movie;
use App\Models\Episode;
use DB;


class IndexController extends Controller
{
    public function timkiem(){
        if(isset($_GET['search'])){
            $search = $_GET['search'];
            $category = Category::orderBy('id','DESC')->where('status',1)->get();
            $genre = Genre::orderBy('id','DESC')->get();
            $country = Country::orderBy('id','DESC')->get();
            
            $movie = Movie::where('title','LIKE','%'.$search.'%')->paginate(24);
            return view('pages.timkiem',compact('category','genre','country','movie','search'));
        }
        else{
            return redirect()->to('/');
        }
    }
    public function home(){
        $phimhot = Movie::where('phimhot',1)->where('status',1)->get();
        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $category_home = Category::with('movie')->orderBy('id','DESC')->where('status',1)->get();
        return view('pages.home',compact('category','genre','country','category_home','phimhot'));
    }
    public function category($slug){
    
        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $cate_slug = Category::where('slug',$slug)->first();
        $movie = Movie::where('category_id',$cate_slug->id)->paginate(24);
        return view('pages.category',compact('category','genre','country','cate_slug','movie'));
    }
    public function genre($slug){
        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $gen_slug = Genre::where('slug',$slug)->first();
        $movie = Movie::where('genre_id',$gen_slug->id)->paginate(24);
        return view('pages.genre',compact('category','genre','country','gen_slug','movie'));
    }
    public function country($slug){
        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $coun_slug = Country::where('slug',$slug)->first();
        $movie = Movie::where('country_id',$coun_slug->id)->paginate(24);
        return view('pages.country',compact('category','genre','country','coun_slug','movie'));
    }
    public function movie($slug){
        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $movie = Movie::with('category','genre','country')->where('slug',$slug)->where('status',1)->first();
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->where('genre_id',$movie->genre->id)->orderBy(DB::raw('RAND()'))->whereNotin('slug',[$slug])->get();
        $episode_first = Episode::with('movie')->where('movie_id',$movie->id)->orderBy('episode','ASC')->take(1)->first();
        $episode = Episode::with('movie')->where('movie_id',$movie->id)->orderBy('episode','DESC')->take(3)->get();

        return view('pages.movie',compact('category','genre','country','movie','related','episode','episode_first'));
    }
    public function watch($slug, $tap){
        if(isset($_GET[$tap])){
            $tapphim = $tap;
        }else{
            $tapphim = 1;
        }
        $tapphim = substr($tap,4,1);
        // dd($tapphim);

        $category = Category::orderBy('id','DESC')->where('status',1)->get();
        $genre = Genre::orderBy('id','DESC')->get();
        $country = Country::orderBy('id','DESC')->get();
        $movie = Movie::with('category','genre','country','episode')->where('slug',$slug)->where('status',1)->first();
        $related = Movie::with('category','genre','country')->where('category_id',$movie->category->id)->where('genre_id',$movie->genre->id)->orderBy(DB::raw('RAND()'))->whereNotin('slug',[$slug])->get();
        $episode = Episode::where('movie_id',$movie->id)->where('episode',$tapphim)->first();
        return view('pages.watch',compact('category','genre','country','movie','related','episode','tapphim'));
    }
    public function episode(){
        return view('pages.episode');
    }
}
