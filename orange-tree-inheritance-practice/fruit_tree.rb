class FruitTree
  attr_reader :age, :height, :fruit, :mature_age, :death_year, :max_height, :growth_rate

  def initialize(mature_age, death_year, max_height, growth_rate)
    @age = 0
    @height = 0
    @fruit = []
    @mature_age = mature_age
    @death_year = death_year
    @max_height = max_height
    @growth_rate = growth_rate
  end

   class NoFruitError < StandardError
    "This tree has no harvest"
  end

  def pass_growing_season
    fruit.clear 
    tree_age 
    tree_grow 
    if mature? 
      bear_fruit 
    end
  end

  def mature?
    age >= mature_age
  end

  def has_fruit?
    fruit.any?
  end

  def dead?
    age >= death_year
  end


  def pick_a_fruit
    return fruit.pop if has_fruit?
    raise NoFruitError, "This tree has no fruit" unless self.has_fruit?
  end

    private
    #do not want anyone outside of the program to change these behaviors
    attr_writer :age, :height

    def tree_age
      self.age = age + 1
      unless self.age == death_year
      end
    end

    def tree_grow
      self.height = height + growth_rate
      unless self.height == max_height
      end
    end
    #refactor to make max height and death year into a method to add into pass_growing_season?

end