import 'package:cleancode/layer/domain/entities/carro_entity.dart';

import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUsecase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('branco')) {
      return CarroEntity(placa: 'avc', qtdPortas: 4, valor: 5000);
    }
     return CarroEntity(placa: 'PPP', qtdPortas: 2, valor: 2000);
  } 
}
