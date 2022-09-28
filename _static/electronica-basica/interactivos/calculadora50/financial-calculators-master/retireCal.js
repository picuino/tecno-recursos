function retireCal(){

//getting values from inputs by manipulating the DOM
let expense = document.getElementsByName("monthly_exp")[0].value;

//annual Expense
let yearly_expense = expense*12;

//As the cost of living will increase over a perio of time so calculate the inflated amount.
let infl_expense = yearly_expense+(yearly_expense * 5.59/100);

let age = document.getElementsByName("age")[0].value;

let retire_age = document.getElementsByName('retire_age')[0].value;

//time period before getting retired
let rem = retire_age - age;

let life_expectancy = document.getElementsByName("life_expectancy")[0].value;

//calculate the post retirement expense as per the inflated amount
let reti_expense = (life_expectancy-retire_age) * infl_expense;

let savings =Number(document.getElementsByName("savings")[0].value);

let growth = document.getElementsByName('growth')[0].value;

//calculate the returns on savings/investment done
let savings_ret = savings * (growth/100) * rem + savings;

//corpus is the balance amount required to cover or the shortage required to cover
let corpus_req = reti_expense - savings_ret;

//calculate the savings/investment neeeded to be done to cover the corpus.
let savings_req = corpus_req / (rem*12);

console.log(savings_req);
//display the values
if(savings_req){
document.getElementsByName("expense")[0].innerHTML = "Monthly Expense: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR'}).format(expense);
document.getElementsByName("r_age")[0].innerHTML = "Retirment Age: "+retire_age;
document.getElementsByName("c_savings")[0].innerHTML = "Current Savings: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR'}).format(savings);
document.getElementsByName("ret_exp")[0].innerHTML = "Post Ret. Expense: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR', }).format(reti_expense);
document.getElementsByName("corpus")[0].innerHTML = "Corpus Required: "+new Intl.NumberFormat('en-IN', { style:'currency', currency: 'INR', }).format(corpus_req);
document.getElementsByName("invest")[0].innerHTML = "Investment needed: "+new Intl.NumberFormat('en-IN', {style:'currency', currency: 'INR',}).format(savings_req) +"p/m";

}
else{
document.getElementById("return").innerHTML = "Your Future Value: Rs.";

}
}
