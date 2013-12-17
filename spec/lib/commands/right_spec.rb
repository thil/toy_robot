require File.expand_path 'lib/commands/right'

describe Commands::Right do

  let(:right) { "right" }
  let(:robot) { double("Robot", right: right ) }
  let(:right_command) { described_class.new(robot) }

  describe "#run" do
    subject { right_command.run }

    it "calls run on robot" do
      expect(subject).to eq right
    end
  end

end
