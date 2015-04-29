class North
  def forward(coords)
    [coords.first, coords.last + 1]
  end

  def backward(coords)
    [coords.first, coords.last - 1]
  end

  def right
    East.new
  end

  def left
    West.new
  end

  def label
    'N'
  end
end

class East
  def forward(coords)
    [coords.first + 1, coords.last]
  end

  def backward(coords)
    [coords.first - 1, coords.last]
  end

  def right
    South.new
  end

  def left
    North.new
  end

  def label
    'E'
  end
end

class South
  def forward(coords)
    [coords.first, coords.last - 1]
  end

  def backward(coords)
    [coords.first, coords.last + 1]
  end

  def right
    West.new
  end

  def left
    East.new
  end

  def label
    'S'
  end
end

class West
  def forward(coords)
    [coords.first - 1, coords.last]
  end

  def backward(coords)
    [coords.first + 1, coords.last]
  end

  def right
    North.new
  end

  def left
    South.new
  end

  def label
    'W'
  end
end
