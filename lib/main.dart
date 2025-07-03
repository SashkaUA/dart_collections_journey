import 'dart:math';
import 'package:dart_collections_journey/names.dart';

void main() {
  runTask1();
  runTask2();
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

void runTask2() {
  print('------------------- Task 2 -------------------');

  final Set<String> uniqueNames1 = ukrainianNames1.toSet();
  final Set<String> uniqueNames2 = ukrainianNames2.toSet();

  final Set<String> unionNames = {...uniqueNames1, ...uniqueNames2};
  print('Кількість елементів у множині unionNames: ${unionNames.length}');

  final Set<String> diffUniqueNames1 = uniqueNames1.difference(uniqueNames2);
  print('Імена uniqueNames1, яких немає в uniqueNames2: ${diffUniqueNames1}');

  final Set<String> diffUniqueNames2 = uniqueNames2.difference(uniqueNames1);
  print('Імена uniqueNames2, яких немає в uniqueNames1: ${diffUniqueNames2}');
}