class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity(
      {required this.placa, required this.qtdPortas, required this.valor});

  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valorReal > 1000) {
      valor *= 2;
    }
  }
}
