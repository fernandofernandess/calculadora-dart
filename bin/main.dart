import 'dart:io';
void main(){
  //Variaveis
  late double n1, n2 , op;
  //Metodos
  double calcSomar(){
    double calcSoma = n1 + n2;
    return calcSoma;
  }
  double calcSubtrair(){
    double calcSubtrair = n1 - n2;
    return calcSubtrair;
  }
  double calcMultiplicar(){
    double calcMultiplicar = n1 * n2;
    return calcMultiplicar;
  }
  double calcDividir(){
    double calcDividir = n1 / n2;
    return calcDividir;
  }
  //Escolha dos numeros
  try {
    print('Digite o primeiro numero: ');
    n1 = double.parse(stdin.readLineSync()!);
    print('Digite o segundo numero: ');
    n2 = double.parse(stdin.readLineSync()!);
    //Escolha da operação
    String menu = ''' 
  ---Selecione a operação---
1. Adição
2. Subtração
3. Multiplicação
4. Divisão
Escolha o numero da operção que deseja ? 
''';
    stdout.write(menu);
    op = double.parse(stdin.readLineSync()!);
    if (op == 1) {
      print('Soma da operação = ${calcSomar()}');
    }
    if (op == 2) {
      print('Diferença da operação = ${calcSubtrair()}');
    }
    if (op == 3) {
      print('Produto da operação = ${calcMultiplicar()}');
    }
    if (op == 4) {
      print('Quociente da operação = ${calcDividir()}');
    }
    if (op > 4 || op < 0) {
      print('Escolha desconhecida, tente novamente e escolha as opções de 1 a 4.');
    }
  }
  catch (e) {
    print('ERRO! Tente novamente digitando somente numeros.');
  }
}