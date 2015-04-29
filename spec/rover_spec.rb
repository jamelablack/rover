require 'rover'
require 'directions'
require 'direction_factory'

# Develop an api that moves a rover around on a grid.
# You are given the initial starting point (x,y) of a rover and the
# direction (N,S,E,W) it is facing.
# The rover receives a character array of commands.
# Implement commands that move the rover forward/backward (f,b).
# Implement commands that turn the rover left/right (l,r).
# Implement wrapping from one edge of the grid to another.
# (planets are spheres after all)
# Implement obstacle detection before each move to a new square.
# If a given sequence of commands encounters an obstacle,
# the rover moves up to the last possible point and reports the obstacle.

describe Rover do

  let(:rover) { Rover.new([1,2], 'N') }

  describe "takes coords and a direction as initialize args" do
    it "returns the rover's coordinates" do
      expect(rover.coords).to eq([1, 2])
      expect(rover.direction).to be_instance_of North
    end
  end

  describe "#move" do
    it "collaborates with its direction to move forward" do
      expect(rover.direction).to receive(:forward)
        .with(rover.coords) { [0, 2] }
      rover.move('f')
      expect(rover.coords).to eql [0, 2]
    end

    it "collaborates with its direction to move backward" do
      expect(rover.direction).to receive(:backward)
        .with(rover.coords) { [1, 2] }
      rover.move('b')
      expect(rover.coords).to eql [1, 2]
    end

    it "collaborates with its direction to turn right" do
      expect(rover.direction).to receive(:right) { South.new }
      rover.move('r')
      expect(rover.direction).to be_instance_of South
    end

    it "collaborates with its direction to turn left" do
      expect(rover.direction).to receive(:left) { West.new }
      rover.move('l')
      expect(rover.direction).to be_instance_of West
    end
  end

end
