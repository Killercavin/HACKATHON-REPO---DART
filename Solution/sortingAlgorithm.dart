List<int> quickSort(List<int> list) {
  if (list.length <= 1) return list;

  int pivot = list[list.length ~/ 2];
  List<int> less = list.where((x) => x < pivot).toList();
  List<int> equal = list.where((x) => x == pivot).toList();
  List<int> greater = list.where((x) => x > pivot).toList();

  return quickSort(less) + equal + quickSort(greater);
}

List<int> bubbleSort(List<int> list) {
  int n = list.length;
  bool swapped;

  do {
    swapped = false;
    for (int i = 0; i < n - 1; i++) {
      if (list[i] > list[i + 1]) {
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
    n--;
  } while (swapped);

  return list;
}

void compareSortingPerformance(List<int> list) {
  // Quick Sort
  Stopwatch stopwatch = Stopwatch()..start();
  List<int> quickSorted = quickSort(List.from(list));
  stopwatch.stop();
  print('Quick Sort executed in: ${stopwatch.elapsedMicroseconds} microseconds');

  // Bubble Sort
  stopwatch.reset();
  stopwatch.start();
  List<int> bubbleSorted = bubbleSort(List.from(list));
  stopwatch.stop();
  print('Bubble Sort executed in: ${stopwatch.elapsedMicroseconds} microseconds');
}

void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62, 32, 2, 77, 15];

  // Compare performance
  compareSortingPerformance(numbers);
}


// I found more problems with this program and consulted AI for quick fix path to solution
