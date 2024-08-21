void clearConsole() {
  print('\x1B[2J\x1B[0;0H');
}

void printMenu() {
  print('=========== MENU ==========');
  print('1. First steps');
  print('0. Close');
  print('Select section: ');
}