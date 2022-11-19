import 'dart:io';

void main() {
  Tmb tmb = new Tmb();

  tmb.calculaTmb();

}

class Tmb {
  void calculaTmb() {
    stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
    double sexo = double.parse(stdin.readLineSync()!);

    stdout.write('Digite seu peso em Kg (Ex.: 82.5): ');
    double idade = double.parse(stdin.readLineSync()!);

    double tmb = 0;

    if (sexo == 'M') {
      if (idade >= 10 || idade <= 18) {
        tmb = 12.2 * peso + 746;
      } else if (idade >= 19 || idade <= 30) {
        tmb = 14.7 * peso + 496;
      } else if (idade >= 31 || idade <= 60) {
        tmb = 8.7 * peso + 829;
      } else {
        tmb = 10.5 * peso + 596;
      }
    } else if (sexo == 'H') {
      if (idade >= 10 || idade <= 18) {
        tmb = 17.5 * peso + 651;
      } else if (idade >= 19 || idade <= 30) {
        tmb = 15.3 * peso + 679;
      } else if (idade >= 31 || idade <= 60) {
        tmb = 8.7 * peso + 879;
      } else {
        tmb = 13.5 * peso + 487;
      }
    }

    stdout.write('1-Fica a maior parte do tempo sentada e não pratica atividades físicas programadas.\n' +
        '2-Dia-a-dia movimentado – dirige, cozinha, caminha até o ponto de ônibus, mas sem atividades físicas programadas OU dia-a-dia sedentário e exercícios físicos três vezes por semana, cerca de 30 minutos por dia.\n' +
        ' 3-Dia-a-dia movimentado e atividades físicas três vezes por semana, cerca de 30 minutos por dia.\n' +
        ' 4-De uma a duas horas e meia de atividades físicas diárias.\n' +
        ' 5- Atividade física diária por mais de três horas.\n' +
        'Em qual das categorias acima você se encaixa? Digite o valor correspondente.\n');

    int indice = int.parse(stdin.readLineSync()!);

    double fa = 0;

    if (indice == 1) {
      fa = 1.2;
    } else if (indice == 2) {
      sexo == 'M' ? fa = 1.3 : fa = 1.4;
    } else if (indice == 3) {
      sexo == 'M' ? fa = 1.45 : fa = 1.5;
    } else if (indice == 4) {
      sexo == 'M' ? fa = 1.5 : fa = 1.6;
    } else if (indice == 5) {
      sexo == 'M' ? fa = 1.7 : fa = 1.8;
    }

    print('Seu gasto metabolico é ${tmb * fa}calorias');
  }

/*1,2: Fica a maior parte do tempo sentada e não pratica atividades físicas programadas.
    1,3 (homens – 1,4): Dia-a-dia movimentado – dirige, cozinha, caminha até o ponto de ônibus, mas sem atividades físicas programadas OU dia-a-dia sedentário e exercícios físicos três vezes por semana, cerca de 30 minutos por dia.
    1,45 (homens – 1,5): Dia-a-dia movimentado e atividades físicas três vezes por semana, cerca de 30 minutos por dia.
    1,5 (homens – 1,6): De uma a duas horas e meia de atividades físicas diárias.
    1,7 (homens – 1,8): Atividade física diária por mais de três horas.
*/

}
