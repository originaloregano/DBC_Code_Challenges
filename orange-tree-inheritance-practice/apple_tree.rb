require_relative 'fruit_tree'

class AppleTree < FruitTree

  def initialize(mature_age = 5, death_year = 45, max_height = 26, growth_rate = 2)
    super
  end

    def bear_fruit
      (400..600).to_a.sample.times { self.fruit << Apple.new.diameter }
    end
end