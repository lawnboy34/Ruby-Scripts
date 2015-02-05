require 'nokogiri'
require 'open-uri'
 
f = File.open("PGpage.htm")
doc = Nokogiri::HTML(f)
 
rows = doc.css("tr.ranking_row, tr.ranking_alt_row")

rows.each do |row|
	text_from_links = row.css("a").map { |x| x.text }
	if text_from_links.size > 0
	# puts text_from_links.inspect
	 
	values = {}
	values["name"] = text_from_links[0]
	values["state"] = text_from_links[1]
	values["school"] = text_from_links[2]
	puts values.inspect
end
end 