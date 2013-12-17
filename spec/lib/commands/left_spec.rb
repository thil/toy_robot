require File.expand_path 'lib/commands/left'

describe Commands::Left do

  let(:left) { "left" }
  let(:robot) { double("Robot", left: left ) }
  let(:left_command) { described_class.new(robot) }

  describe "#run" do
    subject { left_command.run }

    it "calls run on robot" do
      expect(subject).to eq left
    end
  end

end
