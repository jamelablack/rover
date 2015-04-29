require 'direction_factory'
require 'directions'

describe DirectionFactory  do

  describe ".for" do
    it "returns a North instance for 'N'" do
      expect(described_class.for('N')).to be_instance_of North
    end

    it "returns a South instance for 'S'" do
      expect(described_class.for('S')).to be_instance_of South
    end

    it "returns a East instance for 'E'" do
      expect(described_class.for('E')).to be_instance_of East
    end

    it "returns a West instance for 'W'" do
      expect(described_class.for('W')).to be_instance_of West
    end
  end

end
