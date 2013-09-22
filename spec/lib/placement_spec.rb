require File.expand_path 'lib/pos'
require File.expand_path 'lib/placement'
require File.expand_path 'lib/table_top'

describe Placement do

  let(:x) { 1 }
  let(:y) { 1 }
  let(:orientation) { "NORTH" }

  let(:pos) { Pos.new(x, y, orientation) }
  let(:placement) { Placement.new(pos) }

  describe "#initialize" do 
    it "assigns pos" do
      expect(placement.pos).to be pos
    end
  end

  describe "#valid?" do
    let(:width) { 5 }
    let(:height) { 5 }
    let(:table_top) { TableTop.new(width, height) }

    subject { placement.valid? table_top }

    it "validates correct positions" do
      expect(subject).to be true
    end

    context "when x is less than 0" do
      let(:x) { -1 }
      it "fails" do
        expect(subject).to be false
      end
    end

    context "when x is greater than width" do
      let(:x) { width }
      it "fails" do
        expect(subject).to be false
      end
    end

    context "when y is less than 0" do
      let(:y) { -1 }
      it "fails" do
        expect(subject).to be false
      end
    end

    context "when y is greater than height" do
      let(:x) { height }
      it "fails" do
        expect(subject).to be false
      end
    end

  end

end
