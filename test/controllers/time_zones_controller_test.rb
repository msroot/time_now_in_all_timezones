require 'test_helper'

class TimeZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_zone = time_zones(:one)
  end

  test "should get index" do
    get time_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_time_zone_url
    assert_response :success
  end

  test "should create time_zone" do
    assert_difference('TimeZone.count') do
      post time_zones_url, params: { time_zone: {  } }
    end

    assert_redirected_to time_zone_url(TimeZone.last)
  end

  test "should show time_zone" do
    get time_zone_url(@time_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_zone_url(@time_zone)
    assert_response :success
  end

  test "should update time_zone" do
    patch time_zone_url(@time_zone), params: { time_zone: {  } }
    assert_redirected_to time_zone_url(@time_zone)
  end

  test "should destroy time_zone" do
    assert_difference('TimeZone.count', -1) do
      delete time_zone_url(@time_zone)
    end

    assert_redirected_to time_zones_url
  end
end
