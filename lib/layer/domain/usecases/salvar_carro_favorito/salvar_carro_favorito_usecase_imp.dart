import 'package:cleancode/layer/domain/entities/carro_entity.dart';
import 'package:cleancode/layer/domain/repositories/salvar_carro_favorito_respository.dart';

import 'salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    bool result = await _salvarCarroFavoritoRepository(carroEntity);
    return result;
  }
}
