import 'dart:convert';
import 'dart:io';

int getOption() {
  String? option = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!);
  int? value = int.tryParse(option ?? '0');
  return value ?? 0;
}