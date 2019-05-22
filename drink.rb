class Drink

  attr_reader :name, :price, :units

  def initialize(drink_name, price, alcohol_units)

    @name = drink_name
    @price = price
    @units = alcohol_units
  end
  #
  # def price()
  #   return @price
  # end

  def change_name()#
    @name = "Magners"
    # drink_name = "Magners" cannot be used except in parameter(#)
  end
end
