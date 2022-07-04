import 'package:cleancode/layer/domain/entities/carro_entity.dart';
import 'package:cleancode/layer/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:cleancode/layer/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:cleancode/layer/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRespositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('branco')) {
      return CarroEntity(placa: 'avc', qtdPortas: 4, valor: 5000);
    }
     return CarroEntity(placa: 'PPP', qtdPortas: 2, valor: 2000);
  } 
}

main() {
  test(
      'Deveretornar uma instancia de carro vermelho de quando passado qualquer cor',
      () {
    GetCarrosPorCorUsecase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRespositoryImp());
    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUsecase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRespositoryImp());
    var result = useCase('branco');

    expect(result.qtdPortas, 4);
  });
  test(
      'Deve retornar um carro de 2 portas quando qualquer cor excepto vermelho vermelho',
      () {
    GetCarrosPorCorUsecase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRespositoryImp());
    var result = useCase('verde');

    expect(result.qtdPortas, 2);
  });
}
