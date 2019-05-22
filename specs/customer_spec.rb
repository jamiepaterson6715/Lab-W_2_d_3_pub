require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @george = Customer.new("George", 30, 25)
    @jamie = Customer.new("Jamie", 100, 46)
    @bob = Customer.new("Bob", 50, 17)

    @food = Food.new("kebab", 4, 1)
    @beer = Drink.new("Stella", 3, 2) #drinks have to be defined before pub#
    @wine = Drink.new("Pinot", 4, 3)
    @pub = Pub.new("Magnum", 5000, [@beer, @wine])

    # Setup test for buy_food()
    @jamie.buy_drink(@beer, @pub) # Jamie alcohol level is 3 units
  end

    def test_customer_name
      assert_equal("George", @george.name)
  end

    def test_customer_wallet
      assert_equal(97, @jamie.wallet)
    end

  def test_buy_drink
    @jamie.buy_drink(@beer, @pub)
    assert_equal(94, @jamie.wallet)
    assert_equal(5006, @pub.till)
  end

  def test_buy_food
    @jamie.buy_food(@food) # should reduce Jamie alcohol level to 2
    assert_equal(1, @jamie.drunkenness)

  end
end
