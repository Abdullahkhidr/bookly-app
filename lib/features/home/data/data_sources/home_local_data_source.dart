import 'dart:math';

import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = startIndex + 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    if (endIndex >= box.values.length) {
      return [];
    }
    return box.values
        .toList()
        .sublist(startIndex, min(box.values.length, endIndex));
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
