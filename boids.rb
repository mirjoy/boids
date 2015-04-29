def setup
	# specify size of the canvas in pixels
	size 800, 600
	# each session is a "sketch", setup is called at the beginning
	@flock = (1..10).map { Bird.new(rand(800), rand(600))}
end

def draw
	# draw each bird
	# address/update steering of each bird
	# move each bird by its speed in the direction its heading
	background(220, 220, 220)
	@flock.each { |b| b.draw }
	@flock.each { |b| b.move! }
	puts "drawing"
	# mouse_x, mouse_y are the coordinates of the mouse
end

class Bird
	attr_accessor :x, :y, :speed
	def initialize(x,y)
		@x = x
		@y = y
		@speed = 1
		@heading = rand(TWO_PI)
	end

	def draw
		ellipse(x, y, 20,30)
	end

	def x_offset
		speed * cos(@heading)
	end

	def y_offset
		speed * sin(@heading)
	end

	def move!
		@x += x_offset
		@y += y_offset
	end
end