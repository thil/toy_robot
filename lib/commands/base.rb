module Commands
  class Base < Struct.new(:robot, :params)
    def run
      puts 'Unknown command'
    end
  end
end
