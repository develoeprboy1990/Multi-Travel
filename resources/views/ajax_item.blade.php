<select name="ItemID0[]" id="ItemID0_{{request()->ID}}" class="form-select changesNoo"> 
	<option value="">SELECT</option>
	@foreach ($item as $key => $value)
	 <option value="{{$value->ItemID}}|{{$value->Percentage}}|{{$value->Price}}" >{{$value->ItemCode}}-{{$value->ItemName}}-{{$value->Percentage}}</option>
	@endforeach</select>
	<input type="hidden" name="ItemID[]" id="ItemID_{{request()->ID}}"> 
 