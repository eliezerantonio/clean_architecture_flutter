import 'package:cleancode/layer/domain/entities/carro_entity.dart';

import '../../repositories/get_carros_por_cor_repository.dart';
import 'get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUsecase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository.call(cor);
  }
}
