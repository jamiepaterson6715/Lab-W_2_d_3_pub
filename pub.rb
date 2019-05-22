class Pub

attr_reader :name
attr_accessor :till, :drinks, :stock

  def initialize(name, till, drinks, stock)
    # Setup variable for P
    @name = name
    @till = till
    @drinks = drinks
    @stock = stock
  end # end initialize

  def check_age(age)
    if age >= 18
      return "Come on in"
    else
      # Customer is under 18
      return "bugger off!"
    end
  end # end check_age

  def stock_value()
    # set an inital value of the stock to £0
    total = 0

    @stock.select {
      # split the hash between keys and values
      |drink_type, number_in_stock|

      # declare a Drink with the name of k
      if drink_type == 'Stella'
        value = 3
      elsif drink_type == 'Pinot'
        value = 4
      end

      # Calculate the value of current drink type
      drink_type_total_value = number_in_stock * value

      # Add the value of
      total += drink_type_total_value

    }

    # Print out the total value of the stock
    p "total: "
    p total

    # Return the total value of the stock
    return total

  end

end # end Pub
