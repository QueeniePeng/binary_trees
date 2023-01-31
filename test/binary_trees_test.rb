require 'test/unit'
require_relative '../lib/binary_trees'

class BinaryTreesTest < Test::Unit::TestCase
  def setup
    @arr = [4, 10, 6, 8, 9, 55, 23]
    @root = @arr.to_tree
    @tree = Tree.new(@root)
  end

  def cleanup
    @arr = []
    @root = nil
    @tree = nil
  end

  def test_root
    assert_equal 4, @root.val
    assert_equal 9, @root.left.right.val
  end

  def test_tree
    assert_equal @arr, @tree.to_a
    assert_equal @arr.sum, @tree.sum
  end
end
