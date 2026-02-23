import "dart:io";
import "dart:collection";

class Edge<T> {
  T to;
  int weight;
  Edge(this.to, this.weight);
}

class Graphs<T> {
  Map<T, List<Edge<T>>> g = {};
  void addEdge(T u, T v, int w) {
    g.putIfAbsent(u, () => []);
    g.putIfAbsent(v, () => []);
    g[u]?.add(Edge(v, w));
    g[v]?.add(Edge(u, w));
  }

  void BFS(T start) {
    if (!g.containsKey(start)) return;
    Map<T, bool> visited = {};
    Queue<T> q = Queue<T>();
    visited[start] = true;
    q.add(start);
    while (q.isNotEmpty) {
      T node = q.removeFirst();
      stdout.write("$node");
      for (Edge<T> i in g[node]!) {
        if (visited[i.to] != true) {
          visited[i.to] = true;
          q.add(i.to);
        }
      }
    }
  }

  // void DFS(T start) {
  //   if (!g.containsKey(start)) return;

  //   Map<T, bool> visited = {};
  //   _dfsHelper(start, visited);
  // }

  // void _dfsHelper(T node, Map<T, bool> visited) {
  //   visited[node] = true;
  //   stdout.write("$node");

  //   for (Edge<T> edge in g[node]!) {
  //     if (visited[edge.to] != true) {
  //       _dfsHelper(edge.to, visited);
  //     }
  //   }
  // }

  void _dfsHelper(T node, Map<T, bool> v) {
    if (v[node] == true) {
      return;
    }
    v[node] = true;
    stdout.write(node);
    for (Edge<T> i in g[node]!) {
      _dfsHelper(i.to, v);
    }
  }

  void DFS(T s) {
    if (!g.containsKey(s)) return;
    Map<T, bool> visited = {};
    _dfsHelper(s, visited);
  }

  void printGraph() {
    if (g.isEmpty) return;
    g.forEach((key, value) {
      stdout.write("$key : ");
      for (Edge i in value) {
        stdout.write("(${i.to} ${i.weight}), ");
      }
      print("");
    });
  }
}

void main() {
  Graphs<String> g = Graphs();
  g.addEdge("E", "C", 1);
  g.addEdge("C", "A", 1);
  g.addEdge("C", "D", 1);
  g.addEdge("A", "B", 1);
  g.addEdge("D", "B", 1);
  g.addEdge("B", "E", 1);
  g.printGraph();
  g.BFS("A");
  print("");
  g.DFS("A");
}
