class GoogleWeather::Information
  attr_accessor :forecast_information, :city, :postal_code, :latitude, :longitude
  attr_accessor :forecast_date_time, :current_date_time, :unit_system
  def initalize(wx)
    @forecast_information ||= wx["forecast_information"]
    @city ||= @forecast_information["city"]["data"]
    @postal_code ||= @forecast_information["city"]["data"]
    @latitude ||= @forecast_information["latitude_e6"]["data"]
    @longitude ||= @forecast_information["longitude_e6"]["data"]
    @forecast_date ||= @forecast_information["forecast_time"]["data"]
    @current_date_time ||= @forecast_information["current_date_time"]["data"]
    @unit_system ||= @forecast_information["unit_system"]["data"]
  end
end
