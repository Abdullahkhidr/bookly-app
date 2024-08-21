import 'package:bookly/features/home/presentation/view/widgets/book_item_list.dart';
import 'package:flutter/material.dart';

class BestSellersList extends StatelessWidget {
  const BestSellersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BookItemList();
      },
    );
  }
}
