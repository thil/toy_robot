require 'support/shared/turnable_position'
require File.expand_path 'lib/pos'

describe Pos do
  let(:orientation) { Pos::NORTH }
  let(:y)           { 1 }
  let(:x)           { 1 }
  let(:pos)         { described_class.new(x, y, orientation) }

  it_behaves_like 'a turnable position'

  describe "#report" do
    subject { pos.report }

    it "reports on position" do
      expect(subject).to eq "OUTPUT: 1, 1, NORTH"
    end
  end

  describe "#forward" do
    subject { pos.forward }

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
