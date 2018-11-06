require 'pry'


class FindAPark::Scraper

  def self.whole_page
    Nokogiri::HTML(open("https://state.1keydata.com/national-parks-by-state.php"))
  end

  def self.scrape_states_and_parks
    self.whole_page.css('.content3')
    binding.pry

  end

  def self.scrape_parks
    self.whole_page.css()
  end


end
# page = Nokogiri::HTML(open(PAGE_URL))
# news_links = page.css("a").select{|link| link['data-category'] == "news"}
# news_links.each{|link| puts link['href'] }
