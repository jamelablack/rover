class Rover

  attr_accessor :coords, :direction

  def initialize(coords, direction)
    @coords = coords
    @direction = DirectionFactory.for(direction)
  end

  def move(movement)
    case movement
    when 'f'
      self.coords = direction.forward(coords)
    when 'b'
      self.coords = direction.backward(coords)
    when 'r'
      self.direction = direction.right
    when 'l'
      self.direction = direction.left
    end
  end

end
