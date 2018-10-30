
class FindAPark::Scraper



  def self.whole_page
    Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
  end

  def self.states_for_days
    @states = self.whole_page.css('form#simpleStateForm').text #scrapes from page to specific form
    @states_array = @states.split("\n") #separates states and puts into array
    @states_array.slice!(0..3) #removes unwanted data
    @states_array.each_with_index do |state, idx| #iterates and puts out states with numbers
      puts "#{idx + 1}." "#{state}"
  end
end

end

#each state is here:
#<div id="nationalMap-map">
#<map name="Map" id="Map">
#<area shape="rect" alt="Hawaii" coords="171,307,251,367" href="/state/hi/index.htm">
