class DirectionFactory

  def self.for(label)
    {
      'N' => North,
      'S' => South,
      'E' => East,
      'W' => West
    }[label].new
  end

end
