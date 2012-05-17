require "httparty"

class GoogleWeather
  include HTTParty

  def initialize(location)
    result = validate_location(location)
    unless result.class == String
      @wx = result
    end
  end
  
  def current
    @current ||= Current.new(@wx)
  end
  
  def information
    @information ||= Information.new(@wx)
  end
  
  def forecast
    @forecast ||= Array.new
    4.times do |day|
      @forecast << Forecast.new(@wx, day)
    end
    @forecast
  end

  private

  def validate_location(location)
    request = HTTParty.get("http://www.google.com/ig/api?weather=#{location}")
    response = request["xml_api_reply"]["weather"]
    case response.include?("problem_cause")
    when true  
      result = "Invalid Location"
    when false
      result = response
    end
    return result
  end

end


require_relative "gwx/current_conditions"
require_relative "gwx/forecast_conditions"
require_relative "gwx/forecast_information"
