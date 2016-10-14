class TimeZonesController < ApplicationController
  # GET /time_zones
  # GET /time_zones.json
  def index
    now = Time.now
    
    @time_zones = ActiveSupport::TimeZone.all.map { |tz| tz.tzinfo.name }.map { |timezone|  
      t = now.in_time_zone(timezone)
      [timezone,  "#{t.strftime("%T")} (#{t.strftime("%I:%M%p")})" ]
    }.to_h
    
  end
end
