<!doctype html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Hello, world!</title>
    <style>
        .font {
            font-family: "Poppins", sans-serif !important;

            border-collapse: separate;
            text-indent: initial;
            white-space: normal;
            line-height: normal;
            font-weight: normal;
            font-size: medium;
            font-style: normal;
            color: -internal-quirk-inherit;

        }
    </style>
</head>

<body>
    <div class="container mt-5">
  

        <div class="row"  >
            <div class="col-md-4">
                <div >
                    <img width="250px" src="{{asset('/documents/'.$company[0]->Logo)}}" alt="">

                </div>

            </div>
            <div class="col-md-8">
                <span class="font"><strong>
                        <h3>{{$company[0]->Name}}</h3>
                    </strong>
                    TRN # {{$company[0]->TRN}},<br>
                    {{$company[0]->Address}}<br>
                    {{$company[0]->Contact}}<br>
                    {{$company[0]->Email}}

                </span>

            </div>
            <div class="col-lg-12">
                <hr>
            </div>
            <div class="mx-auto mt-4" style="width: 50%;">

                <h3 class="font text-uppercase bold font-weight-bold" style="font-size: 22px;">EXPENSE Receipt</h3>
            </div>

            <div class="container">

                <div class="row">
                    <div class="col-10">
                        <table class="table table-borderless">

                            <tbody class="font">
                                <tr>
                                    <td>Payment Date</td>
                                    <th>{{$expense_master[0]->Date	}}</th>
                                </tr>
                               
                                <tr>
                                    <td>Expense No</td>
                                    <th>{{$expense_master[0]->ChartOfAccountName	}}</th>
                                </tr>
                                
                            </tbody>
                        </table>
                        
                      

                       
                    </div>
                    <div class="col-2">
                        <div class="bg-info text-center pt-4" style="height: 85%; width: 70%; margin-left: -20%;">
                            <span class="font" style="color: white;">
                                Amount Paid <br>
                                {{session::get('Currency')}} {{$expense_master[0]->Total	}}
                            </span>
                        </div>

                    </div>
                </div>
                
                <table class="table table-bordered table-sm" width="85%;">
                          <tr class="bg-light" style="font-weight: bolder;">
                              
                              <td>Transport</td>
                              <td>Meal</td>
                              <td>Salary</td>
                              <td>Phone</td>
                               <td>Rent</td>
                              <td>Other</td>
                              

                          </tr>

                           <tr>
                              
                              <td>{{$expense_master[0]->Transport}}</td>
                              <td>{{$expense_master[0]->Meal}}</td>
                              <td>{{$expense_master[0]->Salary}}</td>
                              <td>{{$expense_master[0]->Phone}}</td>
                              <td>{{$expense_master[0]->Rent}}</td>
                              <td>{{$expense_master[0]->Other}}</td>

                          </tr>

                      </table>

            </div>

 <hr>

 <div style="height: 250px;">.</div>

        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>