class Tgots::Zipcode

#this class takes a zipcode in and returns a url to be searched for the weather
attr_accessor :zipcode, :url

 def initialize(zipcode)
 	@zipcode = zipcode
 	@url = create_url(zipcode)
 end

 def create_url(zipcode)
 	url = "https://weather.com/weather/5day/l/" + "#{zipcode}" +":4:US"
 end

end

