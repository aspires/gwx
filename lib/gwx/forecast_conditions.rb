class GoogleWeather::Forecast
  attr_accessor :forecast_conditions, :day_of_week, :icon, :low, :high, :condition

  def initialize(wx, day)
    @forecast_conditions = wx["forecast_conditions"][day]
  end
  
  def day_of_week
    @day_of_week = @forecast_conditions["day_of_week"]["data"]
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
