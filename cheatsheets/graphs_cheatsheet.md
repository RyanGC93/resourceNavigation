# Binary Tree

## Tree Nodes
``` javascript
class TreeNode {
  constructor(val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }
}
```

## Tree Traversal

BFS

## DFS
### Pre-order 
node,l. subtree, r. subtree
### In-order
l.subtree, node, r.subtree
### Post-order 
l.subtree, r.subtree, node

BST Definition
1. l. subtree contains values < root
2. r. subtree contains values >= to the root
3. l. & r. subtree are BST