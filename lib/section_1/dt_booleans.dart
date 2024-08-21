import 'dart:convert';
import 'dart:io';

import 'package:dart_lab/utils/peripherals.dart';

void printReadmeBooleans() {
  print("""
  La variables booleanas almacenan datos con una lógica binaria, es decir solo pueden tener 2 valores true o false.
  """);
}

void printBooleanMenu() {
  printReadmeBooleans();
  print("""
  ---------- BOOLEANS ----------
  1. get values.
  2. is true?
  0. regresar al menu anterior.
  """);
}

void showBooleanValues() {
  print(true);
  print(false);
}

void booleanMenu() {
  int option = 0;
  do {
    printBooleanMenu();
    getOption();
    switch(option) {
      case 1:
        showBooleanValues();
        break;
      case 2:
        dynamic value;
        value = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
        print(bool.tryParse(value));
        break;
      default:
        print('invalid option');
        break;
    }
  } while(option != 0);
}