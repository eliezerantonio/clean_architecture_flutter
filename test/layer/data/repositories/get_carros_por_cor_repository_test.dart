import 'package:cleancode/layer/data/repositories/get_carros_cor_repository_imp.dart';
import 'package:cleancode/layer/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test('Devolva um carro, independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
