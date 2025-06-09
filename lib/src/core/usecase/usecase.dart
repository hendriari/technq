import 'package:dartz/dartz.dart';
import 'package:technq/src/core/failure/failure.dart';

abstract class Usecase<Type, Params>{
  Future<Either<Failure, Type>> call(Params param);
}