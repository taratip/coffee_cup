class Coffee
  attr_accessor :amount, :maximum_capacity
  def initialize(amount = 8, maximum_capacity = 12)
      if maximum_capacity <= 2
        puts "You have to order coffee cup with maximum capacity greater than 2 oz!"
      else
        @amount = amount
        @maximum_capacity = maximum_capacity
      end
  end

  def sip!
    if @amount > 0
      @amount -= 1
    else
      puts "Hey! You need a refill!"
    end
  end

  def spill!
    @amount = 0
  end

  def refill!
    @amount = @maximum_capacity - 2
  end
end
