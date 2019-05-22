require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")

  class FoodTest < MiniTest::Test

  def setup()
    @kebab = Food.new("kebab", 4, 1)

  end

  def get_name
    assert_equal("kebab", @kebab.name)
  end
  end
