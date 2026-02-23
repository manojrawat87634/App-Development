import 'dart:collection';
import 'dart:io';

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinaryTree {
  Node? root;

  BinaryTree(List<int> arr) {
    root = _buildTree(arr, 0);
  }

  Node? _buildTree(List<int> arr, int index) {
    if (index >= arr.length || arr[index] == -1) return null;
    Node node = Node(arr[index]);
    node.left = _buildTree(arr, 2 * index + 1);
    node.right = _buildTree(arr, 2 * index + 2);
    return node;
  }

  void postOrder() {
    print("\n------------Post Order-------------");
    _postOrder(root);
  }

  void _postOrder(Node? root) {
    if (root == null) return;

    _postOrder(root.left);
    _postOrder(root.right);
    stdout.write("${root.data} ");
  }

  void preOrder() {
    print("\n------------Pre Order-------------");
    _preOrder(root);
  }

  void _preOrder(Node? root) {
    if (root == null) return;
    stdout.write("${root.data} ");
    _preOrder(root.left);
    _preOrder(root.right);
  }

  void levelOrder() {
    print("\n------------ Level Order -------------");
    _levelOrder(root);
  }

  void _levelOrder(Node? root) {
    if (root == null) return;
    Queue<Node> q = new Queue();
    q.add(root);
    while (q.isNotEmpty) {
      Node current = q.removeFirst();
      stdout.write("${current.data} ");
      if (current.left != null) q.add(current.left!);
      if (current.right != null) q.add(current.right!);
    }
  }

  void inOrder() {
    print("\n------------ In Order -------------");
    _inOrder(root);
  }

  void _inOrder(Node? r) {
    if (r == null) return;
    _inOrder(r.left);
    stdout.write("${r.data} ");
    _inOrder(r.right);
  }
}

void main() {
  // List<int> arr = [1, 2, 3, 4, -1, 5, 6];
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];
  BinaryTree tree = BinaryTree(arr);
  tree.postOrder();
  tree.inOrder();
  tree.preOrder();
  tree.levelOrder();
}
