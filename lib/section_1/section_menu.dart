import 'package:dart_lab/section_1/section_1.dart';
import 'package:dart_lab/utils/peripherals.dart';

void section1Logic() {
  int option = 0;
  do {
    printSection1();
    option = getOption();
    switch (option) {
      case 1:
        helloWorld();
        break;
      case 2:
        numbersMenu();
        break;
      case 3:
        stringMenu();
        break;
      default:
        print('invalid option');
    }
  } while (option != 0);
}

void printSection1() {
  print('---------- SECTION 1 ---------');
  print('1. Hello World');
  print('2. Data types - Numbers');
  print('3. Data types - Strings');
  print('0. Regresar al menú anterior');
  print('Select section: ');
}