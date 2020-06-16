

function changeOrder(){
	var arr = $("li");
	var new_arr = [];
	for(var i = 0; i < arr.length; i++){
		new_arr.push(arr[i].textContent);
	};
	var x = new_arr.sort();
	for(var i = 0; i < arr.length; i++){
		arr[i].innerHTML = x[i];
	}
}

// var changeOrderButton = document.getElementById("orderEmployees")
// if(changeOrderButton){
// changeOrderButton.addEventListener("click", function(){
// 	changeOrder();
// })
//}
$("#orderEmployees").on("click", function(){
	changeOrder();
})









