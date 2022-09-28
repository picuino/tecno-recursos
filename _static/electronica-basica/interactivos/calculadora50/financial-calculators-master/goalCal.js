function calGoal(){

/**This fucntion calculates the goal amount required as per the inflation rate
and provides the investment/savnings needed to be done in order to meet the future
 **/
//getting values from inputs by manipulating the DOM
let goal = document.getElementsByName("select")[0].value; //goal

//goal_amount
let goal_amount = Number(document.getElementsByName("goal")[0].value);

//years within which goal must meet
let years_req = Number(document.getElementsByName("years")[0].value);

//current invesments done or savings
let investment = Number(document.getElementsByName("investment")[0].value);

 //inflation rate
let inflation = Number(document.getElementsByName("inflate")[0].value);

//return rate on savings
let return_rate = Number(document.getElementsByName("returns")[0].value);

//as the expense increase over the period of time due to the inflation. So we calculate the inflated amount.
let inflated_goal  = goal_amount + ((goal_amount * inflation/100) * years_req);

//calculate the return on investment
let returns = (investment * return_rate/100)*years_req+investment;

//deduct the returns from inflated amount to get the actual goal amount required to cover.
let amt_req = inflated_goal - returns;

//calculate the per month investment required to cover the required goal amount.
let invest = amt_req / (years_req * 12);


console.log(invest);

//diplay the results
if(invest){
document.getElementsByName("g")[0].innerHTML = "Your Goal: "+goal;
document.getElementsByName("goal_amount")[0].innerHTML = "Goal Amount: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR', maximumSignificantDigits: 3 }).format(goal_amount);
document.getElementsByName("period")[0].innerHTML = "Period: "+years_req;
document.getElementsByName("inflated")[0].innerHTML = "Value required: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR', maximumSignificantDigits: 3 }).format(inflated_goal);
document.getElementsByName("invest")[0].innerHTML = "Investment needed: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR', maximumSignificantDigits: 3 }).format(invest) +"p/m";

}
else{
document.getElementById("return").innerHTML = "Your Future Value: Rs.";

}
}
