require File.expand_path 'lib/robot'
require File.expand_path 'lib/non_placement'

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

end
