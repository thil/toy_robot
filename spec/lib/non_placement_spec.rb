require File.expand_path 'lib/non_placement'

describe NonPlacement do

  let(:non_placement) { NonPlacement.new }

  describe "#valid?" do
    subject { non_placement.valid?(double) }
    it "always returns true" do
      expect( subject ).to be true
    end
  end

  describe "#report" do
    subject { non_placement.report }
    it "returns placement report" do
      expect( subject ). to be NonPlacement::REPORT
    end
  end

  describe "#move" do 
    subject { non_placement.move }
    it "returns non placement" do
      expect( subject ).to be non_placement
    end
  end

end
