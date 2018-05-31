require_relative 'fruit_tree'
require_relative 'orange_tree'
require_relative 'apple_tree'
require_relative 'pear_tree'
# A tree grove can be initialized with an array of trees.
# A tree grove can return different subsets of its trees: all the trees, just trees of one type, just trees that are mature, etc.
# When a tree grove passes a growing season, each of its trees passes a season.

class TreeGrove
  attr_reader :production_ages
  attr_accessor :tree_grove, :orange_tree

	def initialize(orange_tree = OrangeTree.new)
    @orange_tree = orange_tree
    @tree_grove = []
    @production_ages = [0, 5, 20, 37, 50]
  end

  def orange_production
    amount_orange_trees = [0, 20, 20, 10, 20]
    amount_orange_trees.each do |num|
      num.times do 
        production_ages.each do |years|
          until orange_tree.age == years
            orange_tree.pass_growing_season
          end
          tree_grove << [orange_tree, orange_tree.age]
        end
      end
    end
  end

end #class end

tree = TreeGrove.new

tree.orange_production
