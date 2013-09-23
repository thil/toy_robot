require_relative 'lib/simulator'

simulator = Simulator.new

STDIN.each_line do |line|
  simulator.parse line
end
