import 'dart:convert';
import 'dart:io';

import 'package:dart_lab/utils/peripherals.dart';

void printReadmeString() {
  print("""
  Datos tipo String son datos que permiten almacenar caracteres o representan una secuencia de caracteres. Un String puede contener letras números,
  símbolos y cualquier otro tipo de caracteres. Su uso principal es para almacenar texto.
  """);
}

void printDataTypesString() {
  printReadmeString();
  print("""
  --------- STRINGS (CADENA DE CARACTERES) ----------
  1. ingresa una palabra.
  0. regresar al menu anterior
  """);
}

void stringMenu() {
  int option = 0;
  do {
    printDataTypesString();
    option = getOption();
    switch (option) {
      case 1:
        String word;
        print('ingresa una palabra: ');
        word = stdin.readLineSync(encoding: Encoding.getByName('utf-8')!)!;
        print('palabra ingresada: $word');
        break;
      default:
        print("invalid option");
    }
  }while(option != 0);
}