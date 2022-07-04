import '../entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  CarroEntity call(String cor);
}
