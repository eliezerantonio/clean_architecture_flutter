import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dto/carro_dto.dart';

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
