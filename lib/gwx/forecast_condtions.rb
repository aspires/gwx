class GoogleWeather::Forecast
  attr_accessor :forecast_conditions, :day_of_the_week, :icon, :low, :high, :condition

  def initialize(wx)
    @forecast_conditions ||= wx["forecast_conditions"]["data"]
    @day_of_the_week ||= @forecast_conditions["day_of_the_week"]["data"]
    @icon ||= @forecast_conditions["icon"]["data"]
    @low ||= @forecast_conditions["low"]["data"].to_i
    @high ||= @forecast_conditions["high"]["data"].to_i
    @condition ||= @forecast_conditions["condition"]["data"]
  end
end
