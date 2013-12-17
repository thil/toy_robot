require_relative 'base'
require_relative '../pos'
require_relative '../placement'

module Commands
  class Place < Base
    def run
      pos = Pos.new position[0].to_i, position[1].to_i, position[2].downcase.to_sym
      placement = Placement.new(pos)
      robot.place  placement
    end

    private
    def position
      @position ||= params.split.last.split(',')
    end
  end
end
