import 'dart:math';

void main() {
  runTask1();
}

void runTask1() {
  print('------------------- Task 1 -------------------');

  List<int> numbers = List.generate(100, (index) => Random().nextInt(101));

  print(numbers);
  print('65-й елемент: ${numbers[64]}');

  numbers.insert(49, 1000000000);
  numbers.removeWhere((value) => [24, 45, 66, 88].contains(value));

  int total = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      total += numbers[i];
    }
  }

  print('Сума всіх елементів, що діляться на 3 без залишку: ${total}');

  List<int> temp = [];

  for (var item in numbers) {
    if (item % 2 == 0) {
      temp.add(item);
    }
  }

  print('Довжина списку temp: ${temp.length}');
}