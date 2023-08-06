@extends('template.tmp')
@section('title', $pagetitle)
@section('content')
<div class="main-content">
  <div class="page-content">
    <div class="container-fluid">
    <!-- start page title -->                        
    @if (session('error'))
    <div class="alert alert-{{ Session::get('class') }} p-1" id="success-alert">
      {{ Session::get('error') }}  
    </div>
    @endif
    @if (count($errors) > 0)
      <div >
        <div class="alert alert-danger p-1 border-3">
           <p class="font-weight-bold"> There were some problems with your input.</p>
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
            </div>
      </div>
    @endif
    <?php 
      $DrTotal=0;
      $CrTotal=0;
      $Opening=0;
   ?>
    <div class="card">
      <div class="card-body">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td colspan="2"><div align="center" class="style2"><u><strong>Account Summary</strong></u></div></td>
    </tr>
   
    <tr>
      <td width="50%" height="18" valign="top">From {{dateformatreport(request()->StartDate)}} - {{dateformatreport(request()->EndDate)}}</td>
    <td width="50%" valign="top"><div align="right">DATED: {{date('d M,Y')}} </div></td>
    </tr>
  </table>
      

                        
         <table class="table table-bordered table-sm">
    <thead class="bg-light">
    
   <tr>
     
      <th class="col-md-2" align="right">Accounts</th>
      <th class="col-md-1" align="right">Opening Balance</th>
      <th class="col-md-1" align="right">Items</th>
      <th class="col-md-1" align="right">Dhs</th>
      <th class="col-md-1" align="right">Other Amad <span class="text-success">[+]</span></th>
      <th class="col-md-1" align="right">Other Raft <span class="text-danger">[-]</span></th>
      <th class="col-md-2" align="right">Closing Balance</th> 


   </tr> 
    
    </thead>
  
 


    
@foreach($chartofaccount as $value)


<?php 


if( ($value->CODE=='A') OR ($value->CODE=='E'))
{


$opening = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Dr),0,Dr)-if(ISNULL(Cr),0,Cr)) as Balance'))
            //->select( DB::raw('sum(if(ISNULL(Dr),0,Dr)-if(ISNULL(Cr),0,Cr)) as Balance'))
            ->where('ChartOfAccountID',$value->ChartOfAccountID)
            ->where('Date','<',request()->StartDate)
            ->get();


$dhs = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Dr),0,Dr)-if(ISNULL(Cr),0,Cr)) as Balance'))
        ->whereBetween('Date',array(request()->StartDate,request()->EndDate))
        ->where('ChartOfAccountID',$value->ChartOfAccountID)
        ->whereNull('VoucherMstID')

        ->get();





}
else
{

 $opening = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Cr),0,Cr)-if(ISNULL(Dr),0,Dr)) as Balance'))
            ->where('ChartOfAccountID',$value->ChartOfAccountID)
            ->where('Date','<',request()->StartDate)
            ->get();


$dhs = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Cr),0,Cr)-if(ISNULL(Dr),0,Dr)) as Balance'))
        ->whereBetween('Date',array(request()->StartDate,request()->EndDate))
        ->where('ChartOfAccountID',$value->ChartOfAccountID)
        ->whereNull('VoucherMstID')
        ->get();


 

}



 $item = DB::table('journal')
        // ->where('SupplierID',$request->SupplierID)
        ->whereBetween('Date',array(request()->StartDate,request()->EndDate))
        ->where('ChartOfAccountID',$value->ChartOfAccountID)
        ->whereIn('JournalType',['SI','SR'])
        ->count();


 $Amad = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Dr),0,Dr)) as Balance'))
        ->whereBetween('Date',array(request()->StartDate,request()->EndDate))
        ->where('ChartOfAccountID',$value->ChartOfAccountID)
        ->whereNotNull('VoucherMstID')

        ->get();


$Raft = DB::table('journal')
            ->select( DB::raw('sum(if(ISNULL(Cr),0,Cr)) as Balance'))
        ->whereBetween('Date',array(request()->StartDate,request()->EndDate))
        ->where('ChartOfAccountID',$value->ChartOfAccountID)
        ->whereNotNull('VoucherMstID')

        ->get();




$Opening=$Opening+$opening[0]->Balance;







?>



    <tr>
      <td>{{$value->ChartOfAccountName}}-{{$value->ChartOfAccountID}}</td>
      <td align="right">{{number_format($opening[0]->Balance)}}  </td>
      <td align="right">{{ ($item==0) ?  '-' : $item}}</td>
      <td align="right">{{ (count($dhs)==0) ?  '-' : $dhs[0]->Balance}}</td>
      <td align="right">{{ (count($Amad)==0) ?  '-' : $Amad[0]->Balance}}</td>
      <td align="right">{{ (count($Raft)==0) ?  '-' : $Raft[0]->Balance}}</td>
      
       <td align="right">&nbsp;</td>
    </tr>
    @endforeach
    <tr style="border-top: 3px double #A5A5A5">
       <td align="left"><strong>Total</strong></td>
       <td align="right">{{number_format($Opening)}}</td>
       <td align="right">&nbsp;</td>
      <td align="right">&nbsp;</td>
      <td align="right">&nbsp;</td>
      <td align="right">&nbsp;</td>
      <td align="right">&nbsp;</td>



    </tr>
  </table>     
      </div>
  </div>
  
  </div>
</div>

        </div>
      </div>
    </div>
    <!-- END: Content-->
 
  @endsection