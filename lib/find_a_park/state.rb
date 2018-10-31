

class FindAPark::State

  attr_accessor :name

  @@all = [] # [<State @name = "Alabama">]

    def initialize(name=nil)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.new_state
      @states = FindAPark::Scraper.make_states.css('form#simpleStateForm').text
      @states_array = @states.split("\n")
      @states_array.slice!(0..3)
      @states_array
    end

    def self.create_states
      self.new_state.each do |name|
        #instantiate new State instances here
        self.new(name)
      end
    end

end
# def self.new_from_index_page(r)
#   self.new(
#     r.css("h2").text,
#     "https://www.theworlds50best.com#{r.css("a").attribute("href").text}",
#     r.css("h3").text,
#     r.css(".position").text
#     )
# end
