
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia,NoParams>{

  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  

  @override
  Future<Either<Failure, NumberTrivia>?> call(NoParams params) async{
    return await repository.getRandomNumberTrivia();
  }
  
}

 class  NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}