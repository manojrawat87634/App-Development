

int binarySearch(List <int> arr, int left , int right, int t){
    int mid = left + (right - left) ~/ 2;
    if (right < left){
        return -1;
    }
    if (arr[mid] == t){
        return mid;
    }
    if (arr[mid] > t){
        return binarySearch(arr, left, mid - 1, t);
    }
    if (arr[mid] < t){
        return binarySearch(arr, mid + 1, right, t);
    }
    return -1;
}
void main() {
    List<int> arr = [1, 2, 3,4, 5, 6, 7, 8, 9 , 10];
    int target = binarySearch(arr, 0, arr.length - 1, 16);
    print(target);
}