
class FindAPark::Scraper

  def self.whole_page
    Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
  end

  def self.states_for_days
    self.whole_page.css('div#nationalMap-map')
  end

end

#each state is here:
#<div id="nationalMap-map">
#<map name="Map" id="Map">
#<area shape="rect" alt="Hawaii" coords="171,307,251,367" href="/state/hi/index.htm">
