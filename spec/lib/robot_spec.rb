require File.expand_path 'lib/robot'
require File.expand_path 'lib/placement'

describe Robot do

  let(:table_top) { double("TableTop") }
  let(:robot) { Robot.new(table_top) }

  describe "#place" do
    let(:valid) { true }
    let(:placement) { Placement.new(1, 1, "NORTH") }
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
        expect( subject.placement ).to be nil
      end
    end
  end

end
