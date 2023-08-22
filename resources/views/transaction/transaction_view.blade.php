<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>View</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>



	
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div align="center">
  <table width="800" border="0">
    <tr>
      <td width="239"><img name="" src="{{asset('uploads/'.$branch[0]->BranchLogo)}}" width="159" height="117" alt=""></td>
      <td width="551" align="right">{{$branch[0]->BranchName}}<br>{{$branch[0]->BranchContact}}<br>{{$branch[0]->BranchAddress}}</td>
    </tr>
  </table>
  <p><br>
    <strong class="border p-2">Transaction Detail</strong> </p>
  <table width="800" border="0" class="table table-striped" style="width: 800px !important;"  >
    <tr>
      <td width="20%">Transaction Date </td>
      <td>{{dateformatman2($transaction[0]->Date)}}</td>
    </tr>
    <tr>
      <td width="20%">From Account</td>
      <td>{{$transaction[0]->FromAccount}}</td>
    </tr>
    <tr>
      <td width="20%">To Party Name </td>
      <td>{{$transaction[0]->ToAccount}}</td>
    </tr>
    <tr>
      <td width="20%">Entered By </td>
      <td>{{$transaction[0]->UserID}}</td>
    </tr>
    <tr>
      <td width="20%">Amount</td>
      <td>{{$transaction[0]->Amount}}</td>
    </tr>
    <tr>
      <td width="20%">Description</td>
      <td>{{$transaction[0]->Description}}</td>
    </tr>
  </table>



  <p>
  <a href="{{URL('/Transaction')}}" class="btn btn-success btn-rounded waves-effect waves-light mb-2 me-2"><i class="mdi mdi-arrow-left me-1"></i> Go Back</a>
  </p>
</div>
		</div>
	</div>





</div>
</body>
</html>