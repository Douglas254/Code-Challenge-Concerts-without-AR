require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
mugithi=Band.new("Mugithi","Kikuyu")
sungusia=Band.new("Sungusia","Kisii")

event_place=Venue.new("Urban Brew Studios","Kisumu")
dagoz_bar=Venue.new("Sound Africa","Nairobi")

mashup=Concert.new('18th',mugithi,event_place)
jams=Concert.new('12th',sungusia,dagoz_bar)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
