@extends('template.tmp')

@section('title', $pagetitle)
 

@section('content')



<div class="main-content">

 <div class="page-content">
 <div class="container-fluid">
  <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-print-block d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Items Price</h4>
                                      
 
                                </div>
                            </div>
                        </div>
 @if (session('error'))

 <div class="alert alert-{{ Session::get('class') }} p-1" id="success-alert">
                    
                   {{ Session::get('error') }}  
                </div>

@endif

 @if (count($errors) > 0)
                                 
                            <div >
                <div class="alert alert-danger p-1   border-3">
                   <p class="font-weight-bold"> There were some problems with your input.</p>
                    <ul>
                        
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>

                        @endforeach
                    </ul>
                </div>
                </div>
 
            @endif

            
           
  <div class="card">
      <div class="card-body">
  

<!-- enctype="multipart/form-data" -->
<form action="{{URL('/BulklItemPriceUpdate')}}" method="post" class="custom-validation">

@csrf



 @if(count($item_price)>0)    
<table class="table table-sm align-middle table-nowrap mb-0">
<tbody><tr>
<th width="5">S.No</th>
<th  width="200">Agent</th>
<th  width="200">Item</th>
<th  width="50">Price</th>
</tr>
</tbody>
<tbody>
@foreach ($item_price as $key =>$value)
 <tr>
 <td >{{$key+1}}<input type="hidden" name="ItemPriceID[]" value="{{$value->ItemPriceID}}">
</td>
 <td >{{$value->PartyName}}</td>
 <td >{{$value->ItemName}}</td>
 <td ><input type="text" name="Price[]" value="{{$value->Price}}" class="form-control" required=""></td>
 </tr>
 @endforeach   
 </tbody>
 </table>
 @else
   <p class=" text-danger">No data found</p>
 @endif   



 

 



  
 



<button type="submit" class="btn btn-success w-md float-right click-off" >Update</button>
     








  </form>

      </div>
  </div>
  

 

  </div>
</div>






        </div>
      </div>
    </div>


<script type="text/javascript">
$(document).ready(function() {
     $('#student_table').DataTable( );
});

$('.click-off').click(function () {
    // escape here if the confirm is false;
    if (!confirm('Are you sure?')) return false;
    var btn = this;
    setTimeout(function () { $(btn).attr('disabled', 'disabled'); }, 1);
    return true;
});


</script>


    <!-- END: Content-->
<script src="{{asset('assets/libs/parsleyjs/parsley.min.js')}}"></script>
<script src="{{asset('assets/js/pages/form-validation.init.js')}}"></script> 
  @endsection