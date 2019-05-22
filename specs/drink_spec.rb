require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

def setup()
  @stella = Drink.new("Stella", 3, 2)

end

def test_get_name
  assert_equal("Stella", @stella.name)
end

def test_price
  assert_equal(3, @stella.price)
end




end
