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
<form action="{{URL('/ItemPriceSave')}}" method="post" class="custom-validation">

@csrf



 

    <div class="col-md-4">
 <div class="mb-3">
    <label for="basicpill-firstname-input">Agent</label>
     <select name="PartyID" id="PartyID" class="form-select">
    

     @foreach($party as $value)
      <option value="{{$value->PartyID}}" >{{$value->PartyName}}</option>
     @endforeach
    
 
  </select>
  </div>
   </div>



  <div class="col-md-4">
 <div class="mb-3">
    <label for="basicpill-firstname-input">Item</label>
     <select name="ItemID" id="ItemID" class="form-select">
    

     @foreach($item as $value)
      <option value="{{$value->ItemID}}" >{{$value->ItemName}}</option>
     @endforeach
    
 
  </select>
  </div>
   </div>


  <div class="col-md-4">
<div class="mb-3">
<label for="basicpill-firstname-input">Price</label>
<input type="text" class="form-control" name="Price" required="" >
</div>
</div>




<button type="submit" class="btn btn-success w-md float-right">Submit</button>
     








  </form>

      </div>
  </div>
  

<div class="card">
    <div class="card-body">
  @if(count($item)>0)    
  <div class="table-responsive">
<table class=" table table-striped  table-sm align-middle table-nowrap mb-0" id="student_table">
<thead><tr>
<th scope="col">S.No</th>
<th scope="col">Supplier</th>
<th scope="col">Item</th>
<th scope="col">Name</th>
<th scope="col">Price</th>
<th scope="col">Taxable</th>
<th scope="col">Tax %</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
@foreach ($item_price as $key =>$value)
 <tr>
 <td class="col-md-">{{$key+1}}</td>
 <td class="col-md-2">{{$value->PartyName}}</td>
 <td class="col-md-2">{{$value->ItemCode}}</td>
 <td class="col-md-7">{{$value->ItemName}}</td>
 <td class="col-md-7">{{$value->Price}}</td>
 <td class="col-md-1">{{$value->Taxable}}</td>
 <td class="col-md-1">{{$value->Percentage}}</td>
 <td class="col-md-2"><a href="{{URL('/ItemPriceEdit/'.$value->ItemPriceID)}}"><i class=" text-dark bx bx-pencil align-middle me-1"></i></a> <a href="#" onclick="delete_confirm2('ItemPriceDelete',{{$value->ItemPriceID}})"><i class="bx bx-trash text-dark  align-middle me-1"></i></a>  </td>
 </tr>
 @endforeach   
 </tbody>
 </table>
</div>
 @else
   <p class=" text-danger">No data found</p>
 @endif 
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