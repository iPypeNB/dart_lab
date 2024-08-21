import 'dart:convert';
import 'dart:io';

import 'package:dart_lab/utils/peripherals.dart';


void printReadme() {
  print(
      "Datos numérico, los datos numéricos en dart son un tipo de datos que se utilizan para representar numeros matemáticos directamente en el compilador."
      "estos se dividen en dos tipos principales int y double."
      "int para representar números enteros y double para representar números decimales"
      "en Dart los datos int y double ocupan 8 bytes.");
}

int calculateEx(int a, int b) {
  return a * b;
}

double calculateDiv(double a, double b) {
  return a / b;
}

void printDataTypesNumberMenu() {
  print('--------- CACULADORA ----------');
  print('1. Multiplicar');
  print('2. Dividir');
  print('0. Regresar al menú anterior');
}

void calculateMenu() {
  int option = 0;
  do {
    printDataTypesNumberMenu();
    int option = getOption();
    switch(option) {
      case 1:
        print('Ingresa el primer número:');
        int a = int.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!);
        print('Ingresa el segundo número:');
        int b = int.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!);
        int res = calculateEx(a, b);
        print('resultado: $res');
      case 2:
        print('Ingresa el primer número:');
        double a = double.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!);
        print('Ingresa el segundo número:');
        double b = double.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!);
        double res = calculateDiv(a, b);
        print('resultado: $res');
      default:
        print('opción no valida');
    }
  } while (option != 0);
}
