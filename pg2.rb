require 'open-uri'
require 'nokogiri'
 
def links
res = []
 
doc = Nokogiri::HTML(open("http://www.perfectgame.org/Rankings/Players/Default.aspx?gyear=2015&num=500"))
doc.css("tr.ranking_row, tr.ranking_alt_row").each do |row|
row.css("td:eq(4) a").each do |link|
res << link.attr('href')
end
end
 
res
end
 
puts links.inspect 