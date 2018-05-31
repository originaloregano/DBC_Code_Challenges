require_relative 'fruit_tree'

class PearTree < FruitTree

  def initialize(mature_age = 5, death_year = 40, max_height = 20, growth_rate = 2.5)
    super
  end

    def bear_fruit
      (175..225).to_a.sample.times { self.fruit << Pear.new.diameter }
    end
end