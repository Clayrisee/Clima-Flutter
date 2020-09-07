import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);

  int task5Result = await task5();
  task4(task5Result);
}

void task1() {
  String result = "task 1 data";
  print("Task 1 completed");
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
//  sleep(threeSeconds);
  await Future.delayed(threeSeconds, () {
    result = "task 2 data";
    print("Task 2 completed");
  });

//  String result = "task 2 data";
//  print("Task 2 completed");

  return result;
}

void task3(String task2Results) {
  String result = "task 3 data";
  print("Task 3 completed with $task2Results");
}

Future<int> task5() async {
  Duration twoSeconds = Duration(seconds: 2);
  int a, b;

  await Future.delayed(twoSeconds, () {
    a = 10;
    b = 15;
    print("Task 5 completed");
  });
  return a + b;
}

void task4(int task5Results) {
  print("Task 4 completed with task 5 data : $task5Results");
}
