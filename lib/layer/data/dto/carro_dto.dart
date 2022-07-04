import 'package:cleancode/layer/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  @override
  String placa;
  @override
  int qtdPortas;
  @override
  double valor;

  CarroDto({required this.placa, required this.qtdPortas, required this.valor})
      : super(valor: valor, placa: placa, qtdPortas: qtdPortas);

  Map toMap() {
    return {'placa': placa, 'qtdPortas': qtdPortas, 'valor': valor};
  }

  CarroDto fromMap(Map map) {
    return CarroDto(
        placa: map['placa'], qtdPortas: map['qtdPortas'], valor: map['valor']);
  }
}
