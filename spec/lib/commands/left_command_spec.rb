require File.expand_path 'lib/commands/left_command'

describe LeftCommand do

  let(:left) { "left" }
  let(:robot) { double("Robot", left: left ) }
  let(:left_command) { LeftCommand.new(robot) }

  describe "#run" do
    subject { left_command.run }

    it "calls run on robot" do
      expect(subject).to eq left
    end
  end

end
