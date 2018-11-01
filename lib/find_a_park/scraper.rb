require 'pry'
# class FindAPark::Scraper
#
# This is code that works to scrape state name and print in a list
#
#   def whole_page
#     Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
#   end
#
#   def self.states_for_days
#     self.whole_page.css('form#simpleStateForm').text #scrapes from page to specific form
#     @states_array = @states.split("\n") #separates states and puts into array
#     @states_array.slice!(0..3) #removes unwanted data
#     @states_array.each_with_index do |state, idx| #iterates and puts out states with numbers
#       puts "#{idx + 1}." "#{state}"
#   end
# end
#
# end

# Below, I am trying to scrape to create state objects

class FindAPark::Scraper



  def self.whole_page
    Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
    binding.pry
  end

  def self.scrape_states  #<div id="nationalMap-map">
    self.whole_page.css('div#nationalMap-map')
  end

  def self.scrape_parks
    self.whole_page.css()
  end


end

#each state is here:
#<div id="nationalMap-map">
#<map name="Map" id="Map">
#<area shape="rect" alt="Hawaii" coords="171,307,251,367" href="/state/hi/index.htm">
