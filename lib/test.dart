import 'dart:io';

class Car {
  String? codeNumber;
  String? color;
  double? price;
  String? model;
}

void main() {
  Car car1 = Car();
  Car car2 = Car();

  car1.codeNumber = "1234";
  car1.color = "red";
  car1.price = 10000;
  car1.model = "BMW";

  car2.codeNumber = stdin.readLineSync()!;
  car2.color = stdin.readLineSync()!;
  car2.price = double.parse(stdin.readLineSync()!);
  car2.model = stdin.readLineSync()!;
  print("Car 1");
  print(car1.codeNumber);
  print(car1.color);
  print(car1.price);
  print(car1.model);

  print("Car 2");
  print(car2.codeNumber);
  print(car2.color);
  print(car2.price);
  print(car2.model);
}
