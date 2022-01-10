function make2DArray(cols, rows) {
	let arr = new Array(cols);
	for(let i = 0; i < arr.length; i++){
		arr[i] = new Array(rows);
	}	
}

let grid;
let cols = 10;
let rows = 10;
function setup(){
	createCanvas(400, 400);
	grid = make2DArray(cols, rows);
	for(let i = 0; i < cols; i++){
		for(let j = 0; j < rows; j++){
			grid[i][j] = floor(random(2));
		}
	}
}
function draw(){
	background(220);
	ellipse(frameCount % 300,50,80,80);
}

