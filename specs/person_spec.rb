require("minitest/autorun")
require_relative("../person")
require_relative("../bus")


class PersonTest < MiniTest::Test

  def setup
    @person = Person.new("David", 36)
    @person1 = Person.new("Amy", 32)
  end

end
