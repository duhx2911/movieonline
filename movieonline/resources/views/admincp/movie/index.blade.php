@extends('layouts.app')
@section('content')
<div class="container">
    <a href="{{route('movie.create')}}" class="btn btn-primary" style="margin-bottom: 5px">Thêm phim</a>
    <div class="row justify-content-center">
        <div class="col-md-12">
            
            <table class="table" id="tablemovie">
                <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Tên</th>
                      <th scope="col">Đường dẫn</th>
                      <th scope="col">Số tập</th>
                      <th scope="col">Ảnh</th>
                      {{-- <th scope="col">Description</th> --}}
                      <th scope="col">Danh mục</th>
                      <th scope="col">Thể loại</th>
                      <th scope="col">Quốc gia</th>
                      <th scope="col">Trạng thái</th>
                      <th scope="col">Phim hot</th>
                      <th scope="col">Định dạng</th>
                      <th scope="col">Manager</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($list as $key => $cate)
                        
                    <tr>
                      <th scope="row">{{$key}}</th>
                      <td>{{$cate->title}}</td>
                      <td>{{$cate->slug}}</td>
                      <td>{{$cate->sotap}}</td>
                      <td><img src = "{{asset('uploads/movie/'.$cate->image)}}" style="width: 70px"></td>
                      {{-- <td>{{$cate->description}}</td> --}}
                      <td>{{$cate->category->title}}</td>
                      <td>{{$cate->genre->title}}</td>
                      <td>{{$cate->country->title}}</td>
                      <td>
                        @if ($cate->status)
                            Hiển thị
                        @else
                            Ẩn
                        @endif
                        </td>
                        <td>
                            @if ($cate->phimhot==0)
                                Không
                            @else
                                Có
                            @endif
                        </td>
                        <td>
                            @if ($cate->resolution==0)
                                HD
                            @else
                                Full HD
                            @endif
                        </td>
                      <td>
                        <div style="display: flex;">

                            {!! Form::open(['method'=>'DELETE','route'=>['movie.destroy',$cate->id], 'onsubmit'=>'return confirm("Bạn chắc chắn muốn xóa?")']) !!}
                                {!! Form::submit('Xoá', ['class'=>'btn btn-danger']) !!}
                            {!! Form::close() !!}
                            <a href="{{route('movie.edit',$cate->id)}}" class="btn btn-warning" style="margin-left: 5px">Sửa</a>
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
