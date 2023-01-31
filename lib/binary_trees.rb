class Array
  def to_tree(i = 0)
    root = nil
    if i < self.length
      root = TreeNode.new(self[i])
      root.left = to_tree(i * 2 + 1)
      root.right = to_tree(i * 2 + 2)
    end
    root
  end
end

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

class Tree
  def initialize(root = nil)
    @root = root
  end

  def sum(root = @root)
    return 0 if root.nil?

    root.val + sum(root.left) + sum(root.right)
  end

  def to_a(root = @root, arr = [], idx = 0)
    return [] if root.nil?

    arr[idx] = root.val
    to_a(root.left, arr, idx * 2 + 1) if root.left
    to_a(root.right, arr, idx * 2 + 2) if root.right
    arr
  end
end
