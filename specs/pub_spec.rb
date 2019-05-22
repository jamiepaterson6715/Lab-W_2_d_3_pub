require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test
# set upp test environment
def setup()
  @beer = Drink.new("Stella", 3, 2) #drinks have to be defined before pub#
  @wine = Drink.new("Pinot", 4, 3)

  @pub_stock = {
    @beer.name => 3,
    @wine.name => 6
  }

  @pub = Pub.new("Magnum", 5000, [@beer, @wine], @pub_stock)
  @bob = Customer.new("Bob", 50, 17)#move from customer for testing

  ## Person to test alcohol units
  @jamie = Customer.new("Jamie", 100, 46)

  ## Have @jamie buy drinks so that he exceeds limits
  @jamie.buy_drink(@beer, @pub)
  @jamie.buy_drink(@beer, @pub)
  @jamie.buy_drink(@beer, @pub)
  # @jamie.buy_drink(@beer, @pub)

end

# test we can read pub name
def test_get_name
  assert_equal("Magnum", @pub.name)
end

def test_till
  assert_equal(5009, @pub.till)
end

def test_drinks
  assert_equal([@beer, @wine], @pub.drinks)
end
#start point: set up variable

def test_check_age
  assert_equal("bugger off!", @pub.check_age(@bob.age))
end

def test_check_alcohol_units
  assert_equal("No more", @jamie.check_alcohol_units())
end

def test_stock_level
  assert_equal(0, @pub.stock[@beer.name])
end

def test_stock_value
  assert_equal(24, @pub.stock_value)
end


end
