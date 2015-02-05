require 'nokogiri'
require 'open-uri'
 
def players
list_of_players = []
 
f = File.open("PGpage.htm")
doc = Nokogiri::HTML(f)
 
rows = doc.css("tr.ranking_row a text(), tr.ranking_alt_row")
rows.each do |row|
text_from_links = row.css("a").map { |x| x.text }
if text_from_links.size > 0
# puts text_from_links.inspect
 
values = {}
values[:name] = text_from_links[0]
values[:state] = text_from_links[1]
values[:school] = text_from_links[2]
list_of_players << values
end
end
 
list_of_players
end
 
players.each do |player|
puts player.inspect
end


