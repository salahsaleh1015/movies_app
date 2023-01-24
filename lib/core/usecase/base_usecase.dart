import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../movies_module/domain/entity/movies.dart';
import '../error/failure.dart';

abstract class BaseUseCase<T , Parameters >{

  Future<Either<Failure,T>> execute(Parameters parameters);
}

class NoParameters extends Equatable{
  const NoParameters();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}