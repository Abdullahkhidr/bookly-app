import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case_no_param.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepository homeRepository;

  FetchNewestBooksUseCase(this.homeRepository);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepository.fetchNewestBooks();
  }
}
