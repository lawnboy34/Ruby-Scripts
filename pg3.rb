require 'open-uri'
require 'nokogiri' 
require 'mechanize' ##

agent = Mechanize.new
##page = 

page = agent.get("http://www.perfectgame.org/")

# <div id="Header2_HeaderTop1_pSignIn" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;Header2_HeaderTop1_Button1&#39;)" style="z-index: 7001;">
	
	
form = page.form_with(:id => 'Header2_HeaderTop1_tbUsername')
form.login = "matt.bishoff@bluejays.com"
form.password = "my_password"
form.submit

#form = agent.page.form_with(:name => "signdiv")

#form = agent.page.parser.css('form')[0]

#page.form

#puts agent.page.forms[0].fields

#form.length

# def links
# res = []
 
# doc = Nokogiri::HTML(open("http://www.perfectgame.org/Rankings/Players/Default.aspx?gyear=2015&num=500"))
# doc.css("tr.ranking_row, tr.ranking_alt_row").each do |row|
# row.css("td:eq(4) a").each do |link|
# res << link.attr('href')
# end
# end
 
# res
# end
 
# puts links.inspect 