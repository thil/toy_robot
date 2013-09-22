require File.expand_path 'lib/pos'

describe Pos do

  let(:orientation) { "NORTH" }
  let(:y) { 1 }
  let(:x) { 1 }
  let(:pos) { Pos.new(x, y, orientation)}

  describe "#initialize" do
    it "assigns x" do
      expect(pos.x).to eq x 
    end

    it "assigns y" do
      expect(pos.y).to eq y
    end

    it "assigns orientation" do
      expect(pos.orientation).to eq orientation
    end
  end
end
