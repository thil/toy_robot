require File.expand_path 'lib/robot'

describe Robot do

  let(:robot) { Robot.new }

  describe "#place" do
    let(:x) { 1 }
    let(:y) { 1 }
    let(:orientation) { "NORTH" }
    subject { robot.place(x, y, orientation); robot }

    it "assigns x onto robot" do
      expect(subject.x).to be x
    end

    it "assigns y onto robot" do
      expect(subject.y).to be y
    end

    it "assigns orientation onto robot" do
      expect(subject.orientation).to be orientation
    end
  end

end
