import 'package:dart_lab/hello_world.dart';
import 'package:dart_lab/menu.dart';

void appLogic() {
  int option = 0;
  do {
    printMenu();
    option = getOption();
    switch (option) {
      case 1:
        section1Logic();
    }
    clearConsole();
  } while (option != 0);
}

void section1Logic() {
  int option = 0;
  do {
    printSection1();
    option = getOption();
    switch (option) {
      case 1:
        helloWorld();
    }
  } while (option != 0);
}