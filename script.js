let grid;

function setup(){
	createCanvas(400, 400);
	grid = make2DArray(10,10);
}
function draw(){
	background(220);
	ellipse(frameCount % 300,50,80,80);
}

function make2DArray(cols, rows) {
	let arr = new Array(cols);
	for(let i = 0; i < arr.length; i++){
		arr[i] = new Array(rows);
	}
	
}