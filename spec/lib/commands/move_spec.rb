require File.expand_path 'lib/commands/move'

describe Commands::Move do

  let(:move) { "move" }
  let(:robot) { double("Robot", move: move ) }
  let(:move_command) { described_class.new(robot) }

  describe "#run" do
    subject { move_command.run }

    it "calls run on robot" do
      expect(subject).to eq move
    end
  end

end
