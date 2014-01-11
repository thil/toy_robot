require File.expand_path 'lib/non_pos'

describe NonPos do

  let(:non_placement) { NonPos.new }

  describe "#valid?" do
    subject { non_placement.valid?(double) }
    it "always returns true" do
      expect( subject ).to be true
    end
  end

  describe "#report" do
    subject { non_placement.report }
    it "returns placement report" do
      expect( subject ). to be NonPos::REPORT
    end
  end

  describe "#right" do 
    subject { non_placement.right }
    it "returns non placement" do
      expect( subject ).to be non_placement
    end
  end

  describe "#left" do 
    subject { non_placement.left }
    it "returns non placement" do
      expect( subject ).to be non_placement
    end
  end

  describe "#move" do 
    subject { non_placement.move }
    it "returns non placement" do
      expect( subject ).to be non_placement
    end
  end

end