require ("minitest/autorun")
require_relative ("../bus_stop")
require_relative ("../bus")
require_relative ("../person")

class BusStopTest < MiniTest::Test
  def setup
    @passenger1 = Person.new("Betty", 84)
    @busstop = BusStop.new("Edinburgh")
  end

def test_add_person_to_queue()
  @busstop.add_to_queue(@passenger1)
  assert_equal(1, @busstop.queue().count)
end

end
