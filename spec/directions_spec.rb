require 'directions'

describe North do
  let(:north) { described_class.new }

  describe "#forward" do
    it "returns coordinates for a forward movement" do
      expect(north.forward([0, 0])).to eql [0, 1]
    end
  end

  describe "#backward" do
    it "returns coordinates for a backward movement" do
      expect(north.backward([0, 0])).to eql [0, -1]
    end
  end

  describe "#right" do
    it "returns an instance of the East class" do
      expect(north.right).to be_instance_of East
    end
  end

  describe "#left" do
    it "returns an instance of the West class" do
      expect(north.left).to be_instance_of West
    end
  end

  describe "#label" do
    it "returns a generic label" do
      expect(north.label).to eql 'N'
    end
  end
end

describe East do
  let(:east) { described_class.new }

  describe "#forward" do
    it "returns coordinates for a forward movement" do
      expect(east.forward([0, 0])).to eql [1, 0]
    end
  end

  describe "#backward" do
    it "returns coordinates for a backward movement" do
      expect(east.backward([0, 0])).to eql [-1, 0]
    end
  end

  describe "#right" do
    it "returns an instance of the South class" do
      expect(east.right).to be_instance_of South
    end
  end

  describe "#left" do
    it "returns an instance of the North class" do
      expect(east.left).to be_instance_of North
    end
  end

  describe "#label" do
    it "returns a generic label" do
      expect(east.label).to eql 'E'
    end
  end
end

describe South do
  let(:south) { described_class.new }

  describe "#forward" do
    it "returns coordinates for a forward movement" do
      expect(south.forward([0, 0])).to eql [0, -1]
    end
  end

  describe "#backward" do
    it "returns coordinates for a backward movement" do
      expect(south.backward([0, 0])).to eql [0, 1]
    end
  end

  describe "#right" do
    it "returns an instance of the West class" do
      expect(south.right).to be_instance_of West
    end
  end

  describe "#left" do
    it "returns an instance of the East class" do
      expect(south.left).to be_instance_of East
    end
  end

  describe "#label" do
    it "returns a generic label" do
      expect(south.label).to eql 'S'
    end
  end
end

describe West do
  let(:west) { described_class.new }

  describe "#forward" do
    it "returns coordinates for a forward movement" do
      expect(west.forward([0, 0])).to eql [-1, 0]
    end
  end

  describe "#backward" do
    it "returns coordinates for a backward movement" do
      expect(west.backward([0, 0])).to eql [1, 0]
    end
  end

  describe "#right" do
    it "returns an instance of the West class" do
      expect(west.right).to be_instance_of North
    end
  end

  describe "#left" do
    it "returns an instance of the South class" do
      expect(west.left).to be_instance_of South
    end
  end

  describe "#label" do
    it "returns a generic label" do
      expect(west.label).to eql 'W'
    end
  end
end
