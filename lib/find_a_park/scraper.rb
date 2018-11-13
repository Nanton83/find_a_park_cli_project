require 'pry'


class FindAPark::Scraper

  def self.scraped_data
    doc = Nokogiri::HTML(open("https://bestmapsever.com/pages/united-states-national-parks-list"))
    doc
  end

  def self.parks
    self.scraped_data.css('.lalign').text
  end

  def self.scrape_parks
    self.states_and_parks.css('p').text
  end


end
