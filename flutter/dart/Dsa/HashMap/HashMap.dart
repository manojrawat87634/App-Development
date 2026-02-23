import 'dart:io';

class Node{
  String key;
  String value;
  Node ? next;
  Node(this.key, this.value);
}


class MyHashMap {
  static int size = 10;
  List<Node ?> _bucket = List.filled(size, null);
  void display(){
    for (int i = 0; i < size; i++){
      stdout.write("$i :");
      Node ? head = _bucket[i];
      while (head != null){
        stdout.write("(${head.key} : ${head.value}), ");
        head = head.next;
      } 
      stdout.write(" null ");
      print("");
    }
  }  

  int _getHashCode(String key){
    return key.hashCode.abs() % size;
  }

  void put(String key, String value){
    int index = _getHashCode(key);
    Node? head = _bucket[index];
    while (head != null){
      if (head.key == key){
        head.value = value;
        return;
      }
      head = head.next;
    }
    Node n = new Node(key, value);
    n.next = _bucket[index];
    _bucket[index] = n;
  }

  String? get(String key){
    int index = _getHashCode(key);
    // print("-------------------$index-----------------");
    Node? head = _bucket[index];
    while(head != null){
      if (head.key == key){
        return head.value;
      }
      head = head.next;
    }
    return null;
  }
}

void main() {
  MyHashMap map = new MyHashMap();

  map.put("name", "Manoj");
  map.put("role", "Software Engineer");

  map.put("version_control", "Git");
  map.put("ci_cd", "GitHub Actions");
  map.put("os_primary", "Linux");
  map.put("os_secondary", "Windows");
  map.put("editor", "VS Code");
  map.put("api_style", "REST");
  map.put("auth_method", "JWT");
  map.put("payment_gateway", "Stripe");
  map.put("message_queue", "Kafka");
  map.put("cache", "Redis");
  map.put("search_engine", "Elasticsearch");
  map.put("testing_framework", "JUnit");
  map.put("mobile_platform", "Android");
  map.put("web_platform", "Web");
  map.put("build_tool", "Gradle");

  print(map.get("build_tool"));
  // map.display();
}