require File.expand_path 'lib/pos'

describe Pos do

  let(:orientation) { Pos::NORTH }
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

  describe "#left" do 
    subject { pos.left }

    context "facing NORTH" do
      let(:orientation) { Pos::NORTH }
      it "switches to WEST" do
        expect(subject.orientation).to be Pos::WEST
      end
    end

    context "facing WEST" do
      let(:orientation) { Pos::WEST }
      it "switches to SOUTH" do
        expect(subject.orientation).to be Pos::SOUTH
      end
    end

    context "facing SOUTH" do
      let(:orientation) { Pos::SOUTH }
      it "switches to EAST" do
        expect(subject.orientation).to be Pos::EAST
      end
    end

    context "facing EAST" do
      let(:orientation) { Pos::EAST }
      it "switches to NORTH" do
        expect(subject.orientation).to be Pos::NORTH
      end
    end
  end

  describe "#move" do
    subject { pos.move }
    context "facing NORTH" do
      let(:orientation) { Pos::NORTH }
      it "increase y co-ordinate by 1" do
        expect(subject.y).to be (y + 1)
      end
    end
  
    context "facing SOUTH" do
      let(:orientation) { Pos::SOUTH }
      it "decrements y co-ordinate by 1" do
        expect(subject.y).to be (y - 1)
      end
    end

    context "facing EAST" do
      let(:orientation) { Pos::EAST }
      it "increases x co-ordinate by 1" do
        expect(subject.x).to be (x + 1)
      end
    end

    context "facing WEST" do
      let(:orientation) { Pos::WEST }
      it "decrements x co-ordinate down 1" do
        expect(subject.x).to be (x - 1)
      end
    end
  end
end
