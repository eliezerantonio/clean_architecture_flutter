import 'package:cleancode/layer/data/dto/carro_dto.dart';
import 'package:cleancode/layer/domain/entities/carro_entity.dart';
import 'package:cleancode/layer/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    //chamandos a api e ela respondeu um json

    var json = {
     'placa': '123', 'qtdPortas': 2, 'valor': 1000.00
    };
    
    return CarroDto.fromMap(json);
  }
}

main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test('Devolva um carro, independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
