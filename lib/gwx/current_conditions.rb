class GoogleWeather::Current
  attr_accessor :current_conditions,:condition, :temp_f, :temp_c, :humidity, :icon, 
  attr_accessor :wind_condition

  def initialize(wx)
    @current_conditions ||= wx["current_conditions"]["data"]
    @conditon ||= @current_condtions["condition"]["data"]
    @temp_f ||= @current_condtions["temp_f"]["data"].to_i
    @temp_c ||= @current_condtions["temp_c"]["data"].to_i
    @humidity ||= @current_condtions["humidity"]["data"]
    @icon ||= @current_condtions["icon"]["data"]
    @wind_condition ||= @current_condtions["wind_condition"]["data"]
  end
end
