@extends('layouts.app')
@section('content')
<div class="container">
    <a href="{{route('episode.create')}}" class="btn btn-primary" style="margin-bottom: 5px">Thêm tập phim</a>
    <div class="row justify-content-center">
        <div class="col-md-12">
            <table class="table" id="tablemovie"">
                <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Tên Phim</th>
                      <th scope="col">Tập Phim</th>
                      <th scope="col">Link phim</th>
                      {{-- <th scope="col">Trạng thái</th> --}}
                      <th scope="col">Quản lý</th>
                    </tr>
                </thead>
                <tbody class="order_position">
                    @foreach ($list_episode as $key => $episode)
                       
                            <tr>
                            <th scope="row">{{$key}}</th>
                            <td>{{$episode->movie->title}}</td>
                            <td>{{$episode->episode}}</td>
                            <td >{!!$episode->link_phim!!}</td>
                            {{-- <td>
                                @if ($cate->status)
                                    Hiển thị
                                @else
                                    Ẩn
                                @endif
                                </td> --}}
                            <td>
                                <div style="display: flex;">

                                    {!! Form::open(['method'=>'DELETE','route'=>['episode.destroy',$episode->id], 'onsubmit'=>'return confirm("Bạn chắc chắn muốn xóa?")']) !!}
                                        {!! Form::submit('Xoá', ['class'=>'btn btn-danger']) !!}
                                    {!! Form::close() !!}
                                    <a href="{{route('episode.edit',$episode->id)}}" class="btn btn-warning" style="margin-left: 5px">Sửa</a>
                                </div>
                            </td>
                            </tr>
                    
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
