

class FindAPark::State
  attr_accessor :name, :parks

    def self.all
      puts "States go here"
      state = self.new
      state.name = "North Carolina"
      state.parks = ["Blue Ridge", "Cape Lookout"]

    end

end
