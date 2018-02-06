require("minitest/autorun")
require_relative("../bus")
require_relative("../person")


class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal", [])
  end

  def test_drive()
    noise = @bus.drive("broom broom")
    assert_equal("The bus goes broom broom", noise)
  end

  def test_number_of_passengers()
    number = @bus.passengers
    assert_equal([], number)
  end

  def test_add_passenger()
    person = @bus.add_passenger("David")
    assert_equal(["David"], person)
  end

  def test_drop_off_passenger()
    @bus.drop_off_passenger("David")
    left = @bus.passengers
    assert_equal([], left)
  end

  def test_reach_destination()
    @bus.empty("Ocean Terminal")
    left = @bus.passengers
    assert_equal([], left)
  end

  
end
