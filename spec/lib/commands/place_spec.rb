require File.expand_path 'lib/commands/place'
require File.expand_path 'lib/pos'
require File.expand_path 'lib/robot'

describe Commands::Place do

  let(:place) { "place" }
  let(:params) { "PLACE 0,0,north" }
  let(:place_command) { described_class.new(robot, params) }
  let(:table_top) { double("Table Top", width: 5, height: 5) }
  let(:robot) { Robot.new(table_top) }

  describe "#run" do
    subject { place_command.run }

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
