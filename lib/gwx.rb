require "httparty"

class GoogleWeather
  include HTTParty

  def initialize(location)
    result = validate_location(location)
    unless result.class == String
      @wx ||= result
    else
      return result
    end
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
