require 'pry'


class FindAPark::Scraper

  def self.states_and_parks
    doc = Nokogiri::HTML(open("http://listofusnationalparks.com/national-parks-list-by-state/"))
    doc.css('entry-content')
    doc
  end

  def self.scraped_states
    self.states_and_parks.css('h2').text
  end

  def self.scrape_parks
    self.whole_page.css()
  end


end
# page = Nokogiri::HTML(open(PAGE_URL))
# news_links = page.css("a").select{|link| link['data-category'] == "news"}
# news_links.each{|link| puts link['href'] }
