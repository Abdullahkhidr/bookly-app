import 'package:bookly/features/home/presentation/view/widgets/book_item_list.dart';
import 'package:flutter/material.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(itemBuilder: (context, index) {
      return BookItemList(book: null);
    });
  }
}
