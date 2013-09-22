require File.expand_path 'lib/robot'
require File.expand_path 'lib/non_placement'
require File.expand_path 'lib/placement'
require File.expand_path 'lib/pos'

describe Robot do

  let(:table_top) { double("TableTop", width: 5, height: 5) }
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
    let(:placement) { Placement.new(@pos) }
    subject { robot.move; robot }

    it "moves robot forward one position" do
      @pos = Pos.new(0, 0, Pos::NORTH)
      robot.place(placement)
      expect( subject.placement.y ).to be 1
    end

    it "moves robot forward one position" do
      @pos = Pos.new(0, 0, Pos::EAST)
      robot.place(placement)
      expect( subject.placement.x ).to be 1
    end

    context "on the edge of tabletop" do
      it "restricts any movement off table vertically" do
        @pos = Pos.new(0, 0, Pos::SOUTH)
        robot.place(placement)
        expect( subject.placement.x ).to be 0
      end

      it "restricts any movement off table horizontally" do
        @pos = Pos.new(0, 0, Pos::WEST)
        robot.place(placement)
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
