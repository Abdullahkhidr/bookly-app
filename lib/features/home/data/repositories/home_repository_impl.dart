// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRemoteDataSource homeRemoteDataSource;
  HomeLocalDataSource homeLocalDataSource;
  HomeRepositoryImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchFeaturedBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }
      var remoteBooks = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(remoteBooks);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchNewestBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }
      var remoteBooks = await homeRemoteDataSource.fetchNewestBooks();
      return right(remoteBooks);
    } catch (e) {
      return left(Failure());
    }
  }
}
