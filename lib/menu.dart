import 'dart:convert';
import 'dart:io';

void clearConsole() {
  print('\x1B[2J\x1B[0;0H');
}

void printMenu() {
  print('=========== MENU ==========');
  print('1. First steps');
  print('0. Close');
  print('Select section: ');
}

void printSection1() {
  print('---------- SECTION 1 ---------');
  print('1. Hello World');
  print('2. Data types - Numbers');
  print('0. Regresar al menú anterior');
  print('Select section: ');
}

int getOption() {
  String? option = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
  int? value = int.tryParse(option ?? '0');
  return value ?? 0;
}