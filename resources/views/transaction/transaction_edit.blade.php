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
                                    <h4 class="mb-sm-0 font-size-18">Add Rafaat</h4>

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
  <form action="{{URL('/TransactionUpdate')}}" method="post"> 
  {{csrf_field()}} 


<input type="text" name="TransactionID" value="{{$transaction[0]->TransactionID}}">

<div class="row">

    
    
     <div class="col-md-6">

     
         <label for="basicpill-firstname-input">Date <span class="text-danger">*</span></label>
         <div class="input-group" id="datepicker21" style="overflow: visible; z-index: 99999;">
        <input type="text" name="Date" autocomplete="off" class="form-control" placeholder="yyyy-mm-dd" data-date-format="dd/mm/yyyy" data-date-container="#datepicker21" data-provide="datepicker" data-date-autoclose="true" value="{{dateformatman($transaction[0]->Date)}}">
        <span class="input-group-text"><i class="mdi mdi-calendar"></i></span>
    </div>
            
    </div>
    



 

    <div class="col-md-6">
 <div class="mb-3">
    <label for="basicpill-firstname-input">From Account [-]<span class="text-danger">*</span></label>
     <select name="FromAccount" id="FromAccount" class="form-select">
  

 @foreach($chartofaccount as $value)
  <option value="{{$value->ChartOfAccountID}}" {{($value->ChartOfAccountID== $transaction[0]->FromAccount) ? 'selected=selected':'' }} >{{$value->ChartOfAccountName}}</option>
 @endforeach


  </select>
  </div>
   </div>

    <div class="col-md-6">
 <div class="mb-3">
    <label for="basicpill-firstname-input">To Account [+] <span class="text-danger">*</span></label>
     <select name="ToAccount" id="ToAccount" class="form-select">
  

 @foreach($chartofaccount as $value)
  <option value="{{$value->ChartOfAccountID}}" {{($value->ChartOfAccountID== $transaction[0]->ToAccount) ? 'selected=selected':'' }}>{{$value->ChartOfAccountName}}</option>
 @endforeach


  </select>
  </div>
   </div>

  <div class="col-md-6">
<div class="mb-3">
<label for="basicpill-firstname-input">Amount in AED <span class="text-danger">*</span></label>
<input type="text" class="form-control" name="Amount" value="{{$transaction[0]->Amount}}">
</div>
</div>



  



  <div class="col-md-12">
<div class="mb-3">
<label for="basicpill-firstname-input">Description</label>
<input type="text" class="form-control" name="Description" value="{{$transaction[0]->Description}}">
</div>
</div>



 

 
 <div><button type="submit" class="btn btn-success w-lg float-right">Submit</button>
      <a href="{{URL('/Rafaat')}}" class="btn btn-secondary w-lg float-right">Cancel</a>
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