import 'package:dart_lab/menu.dart';
import 'package:dart_lab/section_1/section_menu.dart';
import 'package:dart_lab/utils/peripherals.dart';

void appLogic() {
  int option = 0;
  do {
    printMenu();
    option = getOption();
    switch (option) {
      case 1:
        section1Logic();
        break;
      default:
        print('invalid option');
    }
  } while (option != 0);
}