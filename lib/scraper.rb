require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)

buttons = doc.css(".btn.btn-primary.btn-red")

buttons.each do |button|
    puts button.text.strip
end

