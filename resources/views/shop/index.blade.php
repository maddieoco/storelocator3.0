@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-9 mx-auto">
        <div class="card">
            <div class="card-header">Shop List
                <a href="{{route('shop.create')}}" type="button" class="btn btn-primary float-right">
                    Add Shop
                </a>
            </div>
            
            <div class="card-body" style="height: 500px;overflow: scroll;">
                <table class="table table-striped table-responsive">
                    <thead>
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Company</th>
                        <th scope="col">Address1</th>
                        <th scope="col">Address2</th>
                        <th scope="col">City</th>
                        <th scope="col">State</th>
                        <th scope="col">ZIP</th>
                        <th scope="col">Country</th>
                        <th scope="col">Lat</th>
                        <th scope="col">Lng</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone1</th>
                        <th scope="col">Type</th>
                        <th scope="col">Website</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($shops as $key => $item)
                            <tr>
                                <th scope="row">{{++$key}}</th>
                                <td>{{$item->company ?? ''}}</td>
                                <td>{{$item->address1 ?? ''}}</td>
                                <td>{{$item->address2 ?? ''}}</td>
                                <td>{{$item->city ?? ''}}</td>
                                <td>{{$item->state ?? ''}}</td>
                                <td>{{$item->zip ?? ''}}</td>
                                <td>{{$item->country ?? ''}}</td>
                                <td>{{$item->lat ?? ''}}</td>
                                <td>{{$item->lng ?? ''}}</td>
                                <td>{{$item->email ?? ''}}</td>
                                <td>{{$item->phone1 ?? ''}}</td>
                                <td>{{$item->type ?? ''}}</td>
                                <td>{{$item->website ?? ''}}</td>
                                <td class="d-flex">
                                    <a class="btn btn-success btn-sm mr-2" href="{{route('shop.edit',$item->id)}}" ><i class="fas fa-pencil-alt"></i></a>
                                    @include('components.delete' , ['data' => $item->id, 'route' => 'shop.destroy'])
                                </td>
                            </tr>
                        @endforeach
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
