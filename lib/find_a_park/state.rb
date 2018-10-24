

class FindAPark::State
  attr_accessor :name, :parks

    def self.all
      puts "States go here"
      state = self.new
      state.name = "North Carolina"
    end

end
