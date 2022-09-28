function calReturn(){

//getting values from inputs by manipulating the DOM
  var sip_amt = document.getElementsByName("amount")[0].value;
  var no_years = document.getElementsByName("duration")[0].value;
  var rate = (document.getElementsByName("roi")[0].value/100)/12;

  //console.log(sip_amt, no_years, rate);
  //formula used for SIP M =	P * ( R * ( 1+i )^n -1 )	* ( 1 + i )

  var sip = Math.floor(sip_amt * ((Math.pow((1 + rate), no_years)-1) / rate) * (1 + rate));
  if(sip){
  document.getElementById("return").innerHTML = "Your Future Value: Rs."+sip;
}
else{
  document.getElementById("return").innerHTML = "Your Future Value: Rs.";

}
}
