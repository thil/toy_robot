require File.expand_path 'lib/commands/report'

describe Commands::Report do

  let(:report) { "report" }
  let(:robot) { double("Robot", report: report ) }
  let(:report_command) { described_class.new(robot) }

  describe "#run" do
    subject { report_command.run }

    it "calls run on robot" do
      robot.should_receive(report)
      subject
    end
  end

end
