require 'pry'


class FindAPark::Scraper



  def self.whole_page
    Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
  end

  def self.scrape_states  #<div id="nationalMap-map">
    self.whole_page.css('div#nationalMap-map')
  end

  def self.scrape_parks
    self.whole_page.css()
  end


end
