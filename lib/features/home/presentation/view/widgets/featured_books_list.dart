import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksList extends StatelessWidget {
  final List<BookEntity> books;
  final ScrollController controller;
  const FeaturedBooksList(
      {super.key, required this.books, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        controller: controller,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCoverItem(
              book: books[index],
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.kBookDetailsView, extra: books[index]);
              });
        },
      ),
    );
  }
}
