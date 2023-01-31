# Binary Trees

A gem to convert a binary tree to array and vice versa.

## Install
```
gem install binary_trees
```

## Usage

#### Convert an array to TreeNode and Tree
```
root = [1, 2, 3, 4, 5, 6].to_tree
tree = Tree.new(root)
```

#### Access root value
```
root.val # Output 1
root.left.right.val # Output 5
```

#### Sum tree value
```
tree.sum
```

#### Convert a tree to array
```
tree.to_a
```