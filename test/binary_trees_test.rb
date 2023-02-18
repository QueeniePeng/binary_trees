require 'test/unit'
require_relative '../lib/binary_trees'

class BinaryTreesTest < Test::Unit::TestCase
  attr_accessor :arr, :root, :tree

  def setup
    @arr = [1, 2, 3, 4, 5, 6]
    @root = @arr.to_root
    @tree = Tree.new(@root)
  end

  def cleanup
    @arr = []
    @root = nil
    @tree = nil
  end

  def test_root
    assert_equal 1, root.val
    assert_equal 5, root.left.right.val
  end

  def test_tree
    assert_equal arr.sum, tree.sum
    assert_equal arr, tree.to_a
    assert_equal [1, 3, 2, nil, 6, 5, 4], Tree.new(tree.invert).to_a

  end
end
