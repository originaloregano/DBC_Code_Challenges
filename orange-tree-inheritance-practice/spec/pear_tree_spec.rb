require_relative "../pear"
require_relative "../pear_tree"
require_relative "../fruit_tree"


describe PearTree do
  let(:tree) { PearTree.new }

  describe "#age" do
    it "has an age" do
      expect(tree.age).to eq(0)
    end
  end

  describe "#height" do
    it "has a height" do
      expect(tree.height).to eq(0)
    end
  end


  describe "#pass_growing_season" do
    it "should change the age" do
      expect { tree.pass_growing_season }.to change { tree.age }.by(1)
    end

    it "should make the tree grow" do
      expect { tree.pass_growing_season }.to change{tree.height }.by(2.5)
    end

    context "the tree is old enough to bear fruit" do
      it "should cause the tree to produce pears" do
        6.times { tree.pass_growing_season }
        expect(tree.has_fruit?).to be true
      end
    end
  end

  describe "#mature?" do
    it "returns true if tree is old enough to bear fruit" do
      6.times { tree.pass_growing_season }
      expect(tree.mature?).to be true
    end

    it "returns false if tree is not old enough to bear fruit" do
      3.times { tree.pass_growing_season }
      expect(tree.mature?).to be false
    end
  end

  describe "#dead?" do
    it "should return false for an alive tree" do
      20.times { tree.pass_growing_season }
      expect(tree.dead?).to be false
    end

    it "should return true for a dead tree" do
      100.times { tree.pass_growing_season }
      expect(tree.dead?).to be true
    end
  end

  describe '#has_fruit?' do
    it 'should return true if pears are on the tree' do
      7.times { tree.pass_growing_season }
      expect(tree.has_fruit?).to be true
    end

    it "should return false if the tree has no pears" do
      4.times { tree.pass_growing_season }
      expect(tree.has_fruit?).to be false
    end
  end

  describe "#pick_a_fruit" do
    # it "should return an pear from the tree" do
    #   6.times { tree.pass_growing_season }
    #   expect(tree.pick_an_pear).to be_an_instance_of(pear)
    # end

    it "the returned pear should no longer be on the tree" do
      6.times { tree.pass_growing_season }
      expect { tree.pick_a_fruit }.to change {tree.fruit.count}
    end

    it "should raise an error if the tree has no pears" do
      expect { tree.pick_a_fruit }.to raise_error(FruitTree::NoFruitError, "This tree has no fruit")
    end
  end
end