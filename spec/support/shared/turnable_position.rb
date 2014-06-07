shared_examples 'a turnable position' do
  RIGHT_MOVEMENT = {
    described_class::NORTH => described_class::EAST,
    described_class::EAST  => described_class::SOUTH,
    described_class::SOUTH => described_class::WEST,
    described_class::WEST  => described_class::NORTH
  }.freeze

  describe '#right' do
    subject { pos.right }

    RIGHT_MOVEMENT.each do |facing, final|
      context "facing #{facing}" do
        let(:orientation) { facing }

        its(:orientation) { should be final }
      end
    end
  end

  describe '#left' do
    subject { pos.left }

    RIGHT_MOVEMENT.invert.each do |facing, final|
      context "facing #{facing}" do
        let(:orientation) { facing }

        its(:orientation) { should be final }
      end
    end
  end
end
