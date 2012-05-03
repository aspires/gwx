class GoogleWeather::Forecast
  attr_accessor :forecast_conditions, :day_of_the_week, :icon, :low, :high, :condition

  def initialize(wx)
    @forecast_conditions = wx["forecast_conditions"]["data"]
  end
  
  def day_of_the_week
    @day_of_the_week = @forecast_conditions["day_of_the_week"]["data"]
  end
  
  def icon
    @icon = @forecast_conditions["icon"]["data"]
  end
  
  def low
    @low = @forecast_conditions["low"]["data"].to_i
  end
  
  def high
    @high = @forecast_conditions["high"]["data"].to_i
  end
  
  def condition
    @condition = @forecast_conditions["condition"]["data"]
  end
end
