
class FindAPark::Scraper

  def whole_page
    Nokogiri::HTML(open("https://www.nps.gov/findapark/index.htm"))
  end

end

#each state is here:
#<div id="nationalMap-map">
#<map name="Map" id="Map">
#<area shape="rect" alt="Hawaii" coords="171,307,251,367" href="/state/hi/index.htm">
