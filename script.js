function make2DArray(cols, rows) {
	let arr = new Array(cols);
	for(let i = 0; i < arr.length; i++){
		arr[i] = new Array(rows);
	}	
	return arr;
}

let grid;
let cols;
let rows;
let resolution = 40;
function setup(){
	createCanvas(400, 400);
	cols = width / resolution;
	rows = height / resolution;
	grid = make2DArray(cols, rows);
	for(let i = 0; i < cols; i++){
		for(let j = 0; j < rows; j++){
			grid[i][j] = floor(random(2));
		}
	}
}
function draw(){
	background(0);
	for(let i = 0; i < cols; i++){
		for(let j = 0; j < rows; j++){
			let w = resolution;
			let x = i * resolution;
			let y = j * resolution;
			fill(grid[i][j] == 1 ? 0 : 255);
			noStroke();
			rect(x, y, w, w);
		}
	}
}

