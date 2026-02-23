import "dart:io";

class Node {
    String data;
    Node ? next;
    Node(this.data);
}

class LinkedList {
    Node ? head;
    void insertAtHead(String value){
        Node n = new Node(value);
        if (head == null){
            head = n;
            return;
        }
        n.next = head;
        head = n;
    }
    
    void insertAtEnd(String value){
        Node n = new Node(value);
        if (head== null){
            head = n;
            return;
        }
        Node ?temp = head;
        while (temp?.next != null){
            temp = temp?.next;
        }
        temp?.next = n;
        return;
    }


    void insertAtNthPosition(String value, int index){
        if (index == 0){
            insertAtHead(value);
            return;
        }
        Node n = new Node(value);

        int i = 0;
        Node ? temp = head;
        while ((temp?.next != null) && (i < index - 1)){
            temp = temp?.next;
            i++;
            return;
        }
        n.next = temp?.next;
        temp?.next = n;

    }

    void printList(){
        Node ? temp = head;
        while (temp != null){
            stdout.write(temp.data);
            temp = temp.next;
            stdout.write(" --> ");
        }
            stdout.write(" null                                                                                                                                                                                                                                      ");
    }
}
void main(){
    LinkedList l1 = new LinkedList();
    l1.insertAtHead("E");
    l1.insertAtHead("D");
    l1.insertAtHead("C");
    l1.insertAtHead("B");
    l1.insertAtHead("A");
    l1.printList();
}


// // class Node<T> {
// //   T data;
// //   Node<T>? next;

// //   Node(this.data);
// // }

// // class LinkedList<T> {
// //   Node<T>? head;

// //   void insertAtHead(T value) {
// //     Node<T> newNode = Node(value);
// //     if (head == null){
// //       head = newNode;
// //       return;
// //     }
// //     newNode.next = head;
// //     head = newNode;
// //   }
// //   void append(T value){
  
// //     Node<T> newNode = new Node(value);
// //     if (head == null){
// //       head = newNode;
// //       return;
// //     }
// //     Node <T> ?temp = head;
// //     while (temp.next != null){
// //       temp = temp.next;
// //     } 
// //     temp.next = newNode;
// //   }
// // }


// // int main(){
// //   return 0;
// // }