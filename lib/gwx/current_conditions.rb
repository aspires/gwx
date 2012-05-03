class GoogleWeather::Current
  attr_accessor :current_conditions,:condition, :temp_f, :temp_c, :humidity, :icon, 
                :wind_condition

  def initialize(wx)
    @current_conditions = wx["current_conditions"]["data"]
  end
  
  def condition
    @conditon = @current_condtions["condition"]["data"]
  end
  
  def temp_f
    @temp_f = @current_condtions["temp_f"]["data"].to_i
  end
  
  def temp_c
    @temp_c = @current_condtions["temp_c"]["data"].to_i
  end
  
  def humidity
    @humidity = @current_condtions["humidity"]["data"]
  end
  
  def icon
    @icon = @current_condtions["icon"]["data"]
  end
  
  def wind_condition
    @wind_condition = @current_condtions["wind_condition"]["data"]
  end
end
