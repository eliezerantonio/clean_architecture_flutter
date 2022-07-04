import 'package:cleancode/layer/domain/entities/carro_entity.dart';
import 'package:cleancode/layer/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:cleancode/layer/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
      'Deveretornar uma instancia de carro vermelho de quando passado qualquer cor',
      () {
    GetCarrosPorCorUsecase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar um carro de 4 portas quando vermelho', () {
   GetCarrosPorCorUsecase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('branco');

    expect(result.qtdPortas, 4);

  }); test('Deve retornar um carro de 2 portas quando qualquer cor excepto vermelho vermelho', () {
   GetCarrosPorCorUsecase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('verde');

    expect(result.qtdPortas, 2);

  });
}
