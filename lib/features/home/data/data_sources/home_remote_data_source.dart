import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/methods/save_books_data.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSourceImpl(this._apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');

    List<BookEntity> books = _getListBooks(data);

    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

    List<BookEntity> books = _getListBooks(data);
    saveBooksData(books, kNewestBox);
    return books;
  }

  List<BookEntity> _getListBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return books;
  }
}
