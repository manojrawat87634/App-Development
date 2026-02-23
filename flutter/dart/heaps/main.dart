import 'dart:collection';

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;
  List<Node> nodes = []; // to track insertion order (level-order)
  // Insert a new value
  void insert(int value) {
    Node newNode = Node(value);

    if (root == null) {
      root = newNode;
      nodes.add(newNode);
      return;
    }

    // Insert at first available position (level-order)
    nodes.add(newNode);
    int index = nodes.length - 1;
    int parentIndex = (index - 1) ~/ 2;
    Node parent = nodes[parentIndex];

    if (parent.left == null) {
      parent.left = newNode;
    } else {
      parent.right = newNode;
    }
  }

  void printLevelOrder() {
    if (root == null) return;
    Queue<Node> q = Queue();
    q.add(root!);
    while (q.isNotEmpty) {
      Node current = q.removeFirst();
      print(current.data);
      if (current.left != null) q.add(current.left!);
      if (current.right != null) q.add(current.right!);
    }
  }
}

void main() {
  BinaryTree tree = BinaryTree();

  List<int> values = [1, 2, 3, 4, 5, 6];

  for (int v in values) {
    tree.insert(v);
  }
  tree.printLevelOrder();
  print("Root: ${tree.root?.data}"); // just to show root exists
}
