import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/salvar_carro_favorito_respository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}