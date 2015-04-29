def setup
	# specify size of the canvas in pixels
	size 800, 600
	# each session is a "sketch", setup is called at the beginning
	puts "calling setup on start"
end

def draw

	puts "drawing"
	background(200/(mouse_x + 1), 200, 200)
	ellipse(mouse_x, mouse_y, 30, 40)
	# mouse_x, mouse_y are the coordinates of the mouse
end