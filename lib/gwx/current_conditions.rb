class GoogleWeather::Current
  attr_accessor :current_conditions,:condition, :temp_f, :temp_c, :humidity, :icon, 
                :wind_condition

  def initialize(wx)
    @current_conditions = wx["current_conditions"]
  end
  
  def condition
    @conditon ||= @current_conditions["condition"]["data"]
  end
  
  def temp_f
    @temp_f ||= @current_conditions["temp_f"]["data"].to_i
  end
  
  def temp_c
    @temp_c ||= @current_conditions["temp_c"]["data"].to_i
  end
  
  def humidity
    @humidity ||= @current_conditions["humidity"]["data"]
  end
  
  def icon
    @icon ||= @current_conditions["icon"]["data"]
  end
  
  def wind_condition
    @wind_condition ||= @current_conditions["wind_condition"]["data"]
  end
end
