require File.expand_path 'lib/placement'

describe Placement do

  let(:x) { 1 }
  let(:y) { 1 }
  let(:orientation) { "NORTH" }

  let(:placement) { Placement.new(x, y, orientation) }

  describe "#initialize" do 
    it "assigns x onto robot" do
      expect(placement.x).to be x
    end

    it "assigns y onto robot" do
      expect(placement.y).to be y
    end

    it "assigns orientation onto robot" do
      expect(placement.orientation).to be orientation
    end
  end

end
