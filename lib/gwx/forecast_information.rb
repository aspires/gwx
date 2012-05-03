class GoogleWeather::Information
  attr_accessor :forecast_information, :city, :postal_code, :latitude, :longitude,
                :forecast_date_time, :current_date_time, :unit_system
  
  def initialize(wx)
    @forecast_information = wx["forecast_information"]
  end
  
  def city
    @city ||= @forecast_information["city"]["data"]
  end
  
  def postal_code
    @postal_code ||= @forecast_information["city"]["data"]
  end
  
  def latitude
    @latitude ||= @forecast_information["latitude_e6"]["data"]
  end
  
  def longitude
    @longitude ||= @forecast_information["longitude_e6"]["data"]
  end
  
  def forecast_date
    @forecast_date ||= @forecast_information["forecast_time"]["data"]
  end
  
  def current_date_time
    @current_date_time ||= @forecast_information["current_date_time"]["data"]
  end
  
  def unit_system
    @unit_system ||= @forecast_information["unit_system"]["data"]
  end
end
