

class FindAPark::Movie

  attr_accessor :name

  @@all = [] # [<State @name = "Alabama">]

    def initialize(name=nil)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.all_the_movies

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
