require 'pry'


class FindAPark::Scraper

  def self.entry_content
    doc = Nokogiri::HTML(open("https://www.nationalparked.com/list-of-national-parks"))
    doc.css('.entry-content')
  end

  def self.states
  @states = self.entry_content.css('h3').text.split(' ')
  @states
  end

  def self.scrape_parks
    self.states_and_parks.css('p').text
  end


end
