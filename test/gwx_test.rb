require_relative "../lib/gwx.rb"
require "test/unit"


class WxTest < Test::Unit::TestCase
  CALL = GoogleWeather.new(73072)

  def test_valid_call_should_be_valid
    expected = CALL.class
    assert_equal(expected, GoogleWeather, "Test Call Should Contain Valid Info")
  end
  
  def test_current_should_return_current_conditions
    expected = CALL.current
    assert_equal(expected.class, GoogleWeather::Current, "Test Call Should Contain Current Condition")

  end
  
  def test_information_should_return_forecast_metadata
    expected = CALL.information
    assert_equal(expected.class, GoogleWeather::Information, "Test Call Should Contain Forecast Metadata")
  end
  
  def test_forecast_should_return_4_valid_forecasts
    expected = CALL.forecast
    assert_equal(expected.class, Array, "Test Call Should Contain Forecast Array")   
    assert_equal(expected.length, 4, "Forecast Array should be 4 readings long")   
  end
  
end
