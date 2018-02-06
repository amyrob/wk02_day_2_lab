require ("minitest/autorun")
require_relative ("../bus_stop")
require_relative ("../bus")
require_relative ("../person")

class BusStopTest < MiniTest::Test
  def setup
    @passenger = Person.new("Betty", 84)
    @busstop = BusStop.new("Edinburgh")
  end


end
