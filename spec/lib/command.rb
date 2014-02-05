require File.expand_path 'lib/command'
require File.expand_path 'lib/robot'

describe Command do
  let(:params) { "PLACE 0,0,north" }
  let(:robot)   { Robot.new(double('TableTop', width: 5, height: 5)) }
  let(:command) { Command.new(robot, params) }

  describe '#place' do
    subject { command.place }

    it "positions robot x" do
      subject
      expect(robot.pos.x).to eq 0
    end

    it "positions robot y" do
      subject
      expect(robot.pos.x).to eq 0
    end

    it "orientates robot " do
      subject
      expect(robot.pos.orientation).to eq Pos::NORTH
    end
  end

end
