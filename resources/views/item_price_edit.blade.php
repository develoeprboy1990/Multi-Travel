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
<form action="{{URL('/ItemPriceUpdate')}}" method="post" class="custom-validation">

@csrf

<input type="hidden" name="ItemPriceID" value="{{$item_price[0]->ItemPriceID}}">

 

    <div class="col-md-4">
 <div class="mb-3">
    <label for="basicpill-firstname-input">Agent</label>
     <select name="PartyID" id="PartyID" class="form-select">
    

     @foreach($party as $value)
      <option value="{{$value->PartyID}}" {{($value->PartyID== $item_price[0]->PartyID) ? 'selected=selected':'' }} >{{$value->PartyName}}</option>
     @endforeach
    
 
  </select>
  </div>
   </div>



  <div class="col-md-4">
 <div class="mb-3">
    <label for="basicpill-firstname-input">Item</label>
     <select name="ItemID" id="ItemID" class="form-select">
    

     @foreach($item as $value)
      <option value="{{$value->ItemID}}" {{($value->ItemID== $item_price[0]->ItemID) ? 'selected=selected':'' }}>{{$value->ItemName}}</option>
     @endforeach
    
 
  </select>
  </div>
   </div>


  <div class="col-md-4">
<div class="mb-3">
<label for="basicpill-firstname-input">Price</label>
<input type="text" class="form-control" name="Price" required="" value="{{$item_price[0]->Price}}" >
</div>
</div>




<button type="submit" class="btn btn-success w-md float-right">Submit</button>
     








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
</script>


    <!-- END: Content-->
<script src="{{asset('assets/libs/parsleyjs/parsley.min.js')}}"></script>
<script src="{{asset('assets/js/pages/form-validation.init.js')}}"></script> 
  @endsection