puts "Nokogiri script try"

require 'nokogiri'
require 'open-uri'

items = Array.new
#prices = Array.new

doc = Nokogiri::HTML(open("http://www.perfectgame.org/Rankings/Players/Default.aspx?gyear=2015&num=500"))

#players = doc.xpath("//td") ## this works

#players = doc.xpath("//tr/td") ## this works

players = doc.css("td")

#players =  node.css("table#ContentPlaceHolder1_RankedProspects_gvPlayers tr.ranking_row td:eq(3) a")

#players = doc.xpath("//tr[@class='ranking_row')") 

# players = doc.xpath("//tr[@class='ranking_row')/td")  ## doesn't work -- why?

#players = doc.xpath("//tr[contains(@class,'ranking_row')/a/text()")

###.collect {|node| node.text.strip}

#prices = doc.xpath("//div[contains(@class,'product')]/p[not(@style)]/text()").collect {|node| node.text.strip}
#prices.delete("")

puts players

#end 

#players.zip(prices).each do |title,price|
#puts title+" "+price
#end