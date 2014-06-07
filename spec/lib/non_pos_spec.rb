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

  %i(right left forward).each do |move|
    describe "##{move}" do
      subject { non_placement.send(move) }

      it 'returns non placement' do
        expect(subject).to be non_placement
      end
    end
  end
end
