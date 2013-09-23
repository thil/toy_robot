require File.expand_path 'lib/commands/report_command'

describe ReportCommand do

  let(:report) { "report" }
  let(:robot) { double("Robot", report: report ) }
  let(:report_command) { ReportCommand.new(robot) }

  describe "#run" do
    subject { report_command.run }

    it "calls run on robot" do
      robot.should_receive(report)
      subject
    end
  end

end
