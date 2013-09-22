require File.expand_path 'lib/robot'

describe Robot do

  let(:robot) { Robot.new }

  describe "#place" do
    let(:placement) { double("Placement") }
    subject { robot.place(placement);robot }

    it "assigns placement" do
      expect( subject.placement ).to be placement
    end
  end

end
