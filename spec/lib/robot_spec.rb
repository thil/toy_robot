require File.expand_path 'lib/robot'
require File.expand_path 'lib/non_placement'
require File.expand_path 'lib/pos'

describe Robot do

  let(:table_top) { double("TableTop") }
  let(:robot) { Robot.new(table_top) }

  describe "#place" do
    let(:valid) { true }
    let(:placement) { double("Placement") }
    subject { robot.place(placement);robot }

    before do
      placement.stub(:valid?).and_return(valid)
    end

    it "assigns placement" do
      expect( subject.placement ).to be placement
    end

    context "invalid placement" do
      let(:valid) { false }
      it "should ignore placement" do
        expect( subject.placement.report ).to be NonPlacement::REPORT
      end
    end
  end

  describe "#move" do
    subject { robot.move; robot }

    it "moves robot forward one position" do
      robot.place(0, 0, POS::NORTH)
      expect( subject.placement.y ).to be 1
    end

    it "moves robot forward one position" do
      robot.place(0, 0, POS::EAST)
      expect( subject.placement.x ).to be 1
    end

    context "on the edge of tabletop" do
      it "restricts any movement off table vertically" do
        robot.place(0, 0, POS::SOUTH)
        expect( subject.placement.x ).to be 0
      end

      it "restricts any movement off table horizontally" do
        robot.place(0, 0, POS::WEST)
        expect( subject.placement.y ).to be 0
      end
    end

    context "not placed" do
      it "ignores movement" do
        expect( subject.placement.report ).to be NonPlacement::REPORT
      end
    end
  end

end
