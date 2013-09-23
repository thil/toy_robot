require File.expand_path 'lib/commands/move_command'

describe MoveCommand do

  let(:move) { "move" }
  let(:robot) { double("Robot", move: move ) }
  let(:move_command) { MoveCommand.new(robot) }

  describe "#run" do
    subject { move_command.run }

    it "calls run on robot" do
      expect(subject).to eq move
    end
  end

end
