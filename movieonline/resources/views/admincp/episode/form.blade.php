@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <a href="{{route('episode.index')}}" class="btn btn-primary" style="margin-bottom: 5px">Quản lý tập phim</a>
            <div class="card">
                <div class="card-header">Quản lý phim</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    @if (!isset($episode))    
                        {!! Form::open(['route' =>'episode.store', 'method'=>'POST', 'enctype' =>'multipart/form-data']) !!}
                    @else
                        {!! Form::open(['route' =>['episode.update',$episode->id], 'method'=>'PUT','enctype' =>'multipart/form-data']) !!}
                    @endif
                        
                        <div class="form-group">
                            {!! Form::label('movie', 'Chọn phim', []) !!}
                            {!! Form::select('movie_id', ['0'=>'Chọn phim','Phim' => $list_movie],isset($episode) ? $episode->movie_id : '', ['class'=>'form-control select-movie']) !!}
                        </div>
                        <div class="form-group">
                            {!! Form::label('link', 'Link phim', []) !!}
                            {!! Form::text('link', isset($episode) ? $episode->link_phim : '', ['class'=>'form-control','placeholder'=>'Nhập dữ liệu']) !!}
                        </div>
                        <div class="form-group">
                            {!! Form::label('episode', 'Tập Phim', []) !!}
                            @if(isset($episode))
                                {!! Form::text('episode', isset($episode) ? $episode->episode : '', ['class'=>'form-control','readonly']) !!}
                            @else
                                <select name="episode" class="form-control" id="show_movie">
                                    
                                </select>
                            @endif
                        </div>

                        @if (!isset($episode))  
                            {!! Form::submit('Thêm dữ liệu', ['class'=>'btn btn-success']) !!}
                        @else
                        {!! Form::submit('Cập nhật', ['class'=>'btn btn-success']) !!}
                        @endif
                    {!! Form::close() !!}
                </div>
            </div>
            
            
        </div>
    </div>
</div>

@endsection
