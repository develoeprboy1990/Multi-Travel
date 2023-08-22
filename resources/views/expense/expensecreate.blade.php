@extends('template.tmp')

@section('title', 'page title...')
 

@section('content')

 <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Add Expense</h4>

                                    <div class="page-title-right">
                                        <div class="page-title-right">
                                         <!-- button will appear here -->
                                    </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-xl-12">
                                 @if (session('error'))

<div class="alert alert-{{ Session::get('class') }} p-3">
                    
                  <strong>{{ Session::get('error') }} </strong>
                </div>

@endif

  @if (count($errors) > 0)
                                 
                            <div >
                <div class="alert alert-danger pt-3 pl-0   border-3 bg-danger text-white">
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
  <form action="{{URL('/ExpenseSave')}}" method="post"> 
  {{csrf_field()}} 


<div class="row">

    
    
     <div class="col-md-3">

     
         <label for="basicpill-firstname-input">Expense Date <span class="text-danger">*</span></label>
         <div class="input-group" id="datepicker21" style="overflow: visible; z-index: 99999;">
        <input type="text" name="Date" autocomplete="off" class="form-control" placeholder="yyyy-mm-dd" data-date-format="dd/mm/yyyy" data-date-container="#datepicker21" data-provide="datepicker" data-date-autoclose="true" value="{{date('d/m/Y')}}">
        <span class="input-group-text"><i class="mdi mdi-calendar"></i></span>
    </div>
            
    </div>
    



 

    <div class="col-md-3">
 <div class="mb-3">
    <label for="basicpill-firstname-input">Branch Account <span class="text-danger">*</span></label>
     <select name="ChartOfAccountID" id="ChartOfAccountID" class="form-select">
  

 @foreach($chartofaccount as $value)
  <option value="{{$value->ChartOfAccountID}}" >{{$value->ChartOfAccountName}}</option>
 @endforeach


  </select>
  </div>
   </div>



  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Meal</label>
<input type="text" class="form-control" name="Meal" value="0">
</div>
</div>



  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Transport</label>
<input type="text" class="form-control" name="Transport" value="0">
</div>
</div>


  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Salary</label>
<input type="text" class="form-control" name="Salary" value="0">
</div>
</div>



  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Rent</label>
<input type="text" class="form-control" name="Rent" value="0">
</div>
</div>


  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Phone</label>
<input type="text" class="form-control" name="Phone" value="0">
</div>
</div>



  <div class="col-md-3">
<div class="mb-3">
<label for="basicpill-firstname-input">Other</label>
<input type="text" class="form-control" name="Other" value="0">
</div>
</div>



  <div class="col-md-12">
<div class="mb-3">
<label for="basicpill-firstname-input">Description</label>
<input type="text" class="form-control" name="Description" value="">
</div>
</div>



 

 
 <div><button type="submit" class="btn btn-success w-lg float-right">Submit</button>
      <a href="{{URL('/Expense')}}" class="btn btn-secondary w-lg float-right">Cancel</a>
 </div>
 


 
    
    
    
    
    



</div>


</form>
                                        
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->

                           
                        </div>
                        <!-- end row -->

                      

                       

                         
                     
                        
                    </div> <!-- container-fluid -->
                </div>


  @endsection