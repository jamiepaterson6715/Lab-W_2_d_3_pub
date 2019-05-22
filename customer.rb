class Customer

attr_reader :name, :age, :drunkenness
attr_accessor :wallet

  def initialize (c_name, c_wallet, c_age)

    @name = c_name
    @wallet = c_wallet
    @age = c_age
    @drunkenness = 0
  end


  def buy_drink(drink, pub)
    # Remove price of drink from customer wallet
    @wallet -= drink.price
    #p @wallet
    pub.till += drink.price
    #p pub.till

    # Increase Alcohol Units
    @drunkenness += drink.units

    # Change the stock of the bar
    # for stock_drink in pub.stock
    # end

    pub.stock[drink.name] -= 1

  end

  # Method to allow the customer to buy food
  def buy_food(food)
    # change the drunkenness level
    @drunkenness -= food.rejuvention_level
    @wallet -= food.price
  end

  def check_alcohol_units
    if(@drunkenness >= 3)
      return "No more"
    else
      return "Keep drinking"
    end
  end



end
