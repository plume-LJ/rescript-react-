// MyGame.js

function draw(x, y, border) {
	// suppose `border` is optional and defaults to false
	console.log(x, y, border);
}
draw(10, 20);
draw(20, 20, true);

export { draw };
