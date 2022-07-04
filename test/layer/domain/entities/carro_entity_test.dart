import 'package:cleancode/layer/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade n seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC12', valor: 1000, qtdPortas: 4);
    expect(carroEntity, isNotNull);
  });
  test('Espero que a quantidade de portas seja 3', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC12', valor: 1000, qtdPortas: 4);

    expect(carroEntity.qtdPortas, 4);
  });
  test('Espero que o valorReal seja 2000.0', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC12', valor: 1000, qtdPortas: 2);
    var esperado = 2000;
    expect(carroEntity.valorReal, esperado);
  });
  test('Espero que o valorReal seja 0', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC12', valor: 1000, qtdPortas: 0);
    var esperado = 0;
    expect(carroEntity.valorReal, esperado);
  });
  test('Espero que o valor seja 30000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC12', valor: 2000, qtdPortas: 2);
    var esperado = 4000;
    carroEntity.setLogica();
    expect(carroEntity.valor, esperado);
  });
}
