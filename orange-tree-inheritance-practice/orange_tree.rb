require_relative 'fruit_tree'

class OrangeTree < FruitTree

  def initialize(mature_age = 6, death_year = 100, max_height = 25, growth_rate = 2.5)
    super
  end

  def bear_fruit
      (100..300).to_a.sample.times { self.fruit << Orange.new.diameter }
  end
  #two unique things about this methods behavior to justify keeping it unless you make all of the fruit
  #the same random diameter sizes and can insert fruit_yield into your initialize method

end