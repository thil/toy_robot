require File.expand_path 'lib/robot'
require File.expand_path 'lib/non_pos'
require File.expand_path 'lib/pos'

describe Robot do

  let(:table_top) { double("TableTop", width: 5, height: 5) }
  let(:robot) { Robot.new(table_top) }

  describe "#place" do
    let(:valid) { true }
    let(:pos) { double("Pos", valid?: valid) }
    subject { robot.place(pos);robot }

    it "assigns pos" do
      expect( subject.pos ).to be pos
    end

    context "invalid pos" do
      let(:valid) { false }
      it "ignores pos" do
        expect( subject.pos.report ).to be NonPos::REPORT
      end
    end
  end

  describe "#report" do
    let(:pos) { Pos.new(0, 0, Pos::WEST) }
    subject { robot.report }

    it "reports back current position" do
      robot.place(pos)
      expect(subject).to eq "OUTPUT: 0, 0, WEST"
    end

  end

  describe "#right" do
    subject { robot.right; robot }
    let(:pos) { Pos.new(0, 0, Pos::WEST) }

    it "turns from WEST to NORTH" do
      robot.place(pos)
      expect( subject.pos.orientation ).to be Pos::NORTH
    end

    context "not placed" do
      it "ignores movement" do
        expect( subject.pos.report ).to be NonPos::REPORT
      end
    end
  end

  describe "#left" do
    subject { robot.left; robot }
    let(:pos) { Pos.new(0, 0, Pos::NORTH) }

    it "turns from NORTH to WEST" do
      robot.place(pos)
      expect( subject.pos.orientation ).to be Pos::WEST
    end

    context "not placed" do
      it "ignores movement" do
        expect( subject.pos.report ).to be NonPos::REPORT
      end
    end
  end

  describe "#move" do
    subject { robot.move; robot }

    it "moves robot forward one position" do
      pos = Pos.new(0, 0, Pos::NORTH)
      robot.place(pos)
      expect( subject.pos.y ).to be 1
    end

    it "moves robot forward one position" do
      pos = Pos.new(0, 0, Pos::EAST)
      robot.place(pos)
      expect( subject.pos.x ).to be 1
    end

    context "on the edge of tabletop" do
      it "restricts any movement off table vertically" do
        pos = Pos.new(0, 0, Pos::SOUTH)
        robot.place(pos)
        expect( subject.pos.x ).to be 0
      end

      it "restricts any movement off table horizontally" do
        pos = Pos.new(0, 0, Pos::WEST)
        robot.place(pos)
        expect( subject.pos.y ).to be 0
      end
    end

    context "not placed" do
      it "ignores movement" do
        expect( subject.report ).to be NonPos::REPORT
      end
    end
  end

end
