import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_item_list.dart';
import 'package:flutter/material.dart';

class NewestSellersList extends StatelessWidget {
  final List<BookEntity> books;
  const NewestSellersList({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return BookItemList(book: books[index]);
      },
    );
  }
}
