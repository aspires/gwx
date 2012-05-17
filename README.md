GWx Gem: Google Weather API Wrapper
===================================
A Ruby wrapper for the Unofficial Google Weather API

NOTE: the Google Weather API is unoffical, unliscensed, and unintended for production use.
If you want to use weather in a production environment, or even for more than just a few quick examples,
use the [Yahoo Weather Wrapper Gem, YWx](https://github.com/aspires/ywx). Usage is very similar, and
you won't get blocked for sending a larger number of requests.

About
-----

Weather data is a great way to expose new programmers to the broad functionality
of APIs. The Google Weather API, though unofficial, is quite possibly the
simplest, easiest weather data API available, making it ideal for brief
demonstrations of programming and the Ruby language.

Usage
-----

Being by installing the GWx gem

    gem install gwx
    
To initiate a new call, simply do the following

    location = 73072 # This can also be a descriptive string, such as "New York City" or "New York, New York" 
    weather = GoogleWeather.new(location)
    
    p weather.current
    p weather.information
    p weather.forecast
    
Advantages and Disadvantages
----------------------------

### Advantages

1) This gem doesn't require a developer key, unlike most Wx APIs. This means that for simple programming demos, the GWx gem will
serve the majority of your purposes

2) The location processing functionality within the API is _extremely_ robust. Google deserves some credit for the ability to pass the API
nearly any possible location data, and still receive accurate information. For example, the following calls actually work:

    weather = GoogleWeather.new("LAX") #Airport Codes
    weather = GoogleWeather.new("Dallas") #Cities without States
    weather = GoogleWeather.new("1600 Pennsylvania Ave Washington DC") #Spaced Addresses
    weather = GoogleWeather.new("asdf 73072") #It even filters out irrelevant noise in some instances
    
### Disadvantages

1) It won't work in production. If you want to use Wx data in production, use my [YWx gem](https://github.com/aspires/ywx), or use NOAA's REST api. I'll
be working on an updated Ruby wrapper in the near future

Contributing
------------

Feel free to fork away, but you can also shoot me an email at AustinSpires AT gmail.com

But, since this API will never really be production viable, I'd recomend you put your development efforts into other Wx data tools that have
production value.

