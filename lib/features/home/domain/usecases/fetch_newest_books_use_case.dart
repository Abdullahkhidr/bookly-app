import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase {
  final HomeRepository homeRepository;

  FetchNewestBooksUseCase(this.homeRepository);

  Future<Either<Failure, List<BookEntity>>> call() async {
    return homeRepository.fetchNewestBooks();
  }
}
