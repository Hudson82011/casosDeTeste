import 'dart:io';

void main() {
  Imc imc = new Imc();

  stdout.write('Digite A para calcular o IMC e B para calcular o peso ideal;');
  String val = stdin.readLineSync()!;

  while (val != "A" && val != "B") {
    stdout
        .write('Digite A para calcular o IMC e B para calcular o peso ideal;');
    val = stdin.readLineSync()!;
  }

  if (val == 'A') {
    imc.calculaImcGenerico();
  } else {
    imc.calculaPesoIdeal();
  }
}

class Imc {
  ///resp 1-a
  void calculaImcGenerico() {
    print('Calcula IMC');

    stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura em metros (Ex.: 1.80): ');
    double altura = double.parse(stdin.readLineSync()!);

    stdout.write('Digite a sua idade (Ex.: 18): ');
    int idade = int.parse(stdin.readLineSync()!);

    double imc = peso / (altura * altura);

    print('Seu IMC é ' + imc.toStringAsFixed(2));

    if (imc < 16) {
      print('Magreza grave');
    } else if (imc < 17) {
      print('Magreza moderada');
    } else if (imc < 18.5) {
      print('Magreza leve');
    } else if (imc < 25) {
      print('Saudável');
    } else if (imc < 30) {
      print('Sobrepeso');
    } else if (imc < 35) {
      print('Obesidade – GRAU I');
    } else if (imc < 40) {
      print('Obesidade – GRAU II | Severa');
    } else {
      print('Obesidade – GRAU III | Mórbida');
    }
  }

  void calculaPesoIdeal() {
    print('Calcula peso ideal');

    stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite sua altura em metros (Ex.: 1.80): ');
    double altura = double.parse(stdin.readLineSync()!);

    stdout.write('Digite a sua idade (Ex.: 18): ');
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write('Digite seu sexo (Ex.:M para mulher - H para Homem ): ');
    String sexo = "";
    String val = stdin.readLineSync()!;
    val == "M" || val == "H"
        ? sexo = val
        : print('Digite uma sexualidade valida.');

    double pesoIdeal = 0;

    if (idade >= 3 && 17 <= idade) {
      pesoIdeal = idade * 2 + 9;

      ///} else if (11 >= idade && 17 <= idade) {
    } else if (18 >= idade && 64 <= idade) {
      if (sexo == "M") {
        pesoIdeal = 21 * (altura * altura);
      } else {
        pesoIdeal = 22 * (altura * altura);
      }
    } else if (idade >= 65) {
      if (idade >= 65 && idade <= 69) {
        peso =
            sexo == 'H' ? 24.3 * (altura * altura) : 26.5 * (altura * altura);
      } else if (idade >= 70 && idade <= 74) {
        peso =
            sexo == 'H' ? 25.1 * (altura * altura) : 26.3 * (altura * altura);
      } else if (idade >= 75 && idade <= 79) {
        peso =
            sexo == 'H' ? 23.9 * (altura * altura) : 26.1 * (altura * altura);
      } else if (idade >= 80 && idade <= 84) {
        peso =
            sexo == 'H' ? 23.7 * (altura * altura) : 25.5 * (altura * altura);
      } else {
        peso =
            sexo == 'H' ? 23.1 * (altura * altura) : 23.6 * (altura * altura);
      }
    } else {
      print('Não calculável');
    }
    print('Seu peso ideal é ${pesoIdeal.toStringAsFixed(2)}');
  }
}
