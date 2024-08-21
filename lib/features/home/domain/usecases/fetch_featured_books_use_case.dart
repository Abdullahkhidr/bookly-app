// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  HomeRepository homeRepository;
  FetchFeaturedBooksUseCase(this.homeRepository);

  Future<Either<Failure, List<BookEntity>>> call() async {
    return homeRepository.fetchFeaturedBooks();
  }
}
