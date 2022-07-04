import 'package:cleancode/layer/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorUsecase{

CarroEntity call(String cor);
}