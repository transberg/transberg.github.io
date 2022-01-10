let grid;
let cols;
let rows;
let resolution = 4;

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
	updateGrid();
	showGrid();
}

function showGrid(){
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

function updateGrid(){
	let next = make2DArray(cols, rows);
	for(let i = 1; i < cols - 1; i++){
		for(let j = 1; j < rows - 1; j++){
			
			var sum = 0;
			for(let x = i - 1; x <= i + 1; x++){
				for(let y = j - 1; y <= j + 1; y++){
					sum += grid[x][y];
				}
			}
			if(grid[i][j] == 1){
				if(sum == 3 || sum == 4){
					next[i][j] = 1;
				}else{
					next[i][j] = 0;
				}
			} else{
				if(sum == 3){
					next[i][j] = 1;
				}else{
					next[i][j] = 0;
				}
			}
			
		}
	}
	grid = next;
}

function make2DArray(cols, rows) {
	let arr = new Array(cols);
	for(let i = 0; i < arr.length; i++){
		arr[i] = new Array(rows);
	}	
	return arr;
}
