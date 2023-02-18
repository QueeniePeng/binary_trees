# Binary Trees

A gem to convert a binary tree to array and vice versa.

## Install
```
gem install binary_trees
```

## Usage

#### Convert an array to TreeNode(root) and Tree
```
root = [1, 2, 3, 4, 5, 6].to_root
tree = Tree.new(root)
```

#### Access root value
```
root.val # == 1
root.left.right.val # == 5
```

#### Sum tree value
```
tree.sum # == 11
```

#### Convert a tree to array
```
tree.to_a
```

#### Invert TreeNodes (left -> right && right -> left)
```
tree.invert # return root [1, 3, 2, nil, 6, 5, 4]
```