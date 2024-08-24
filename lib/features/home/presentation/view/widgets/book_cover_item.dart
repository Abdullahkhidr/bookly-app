import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCoverItem extends StatelessWidget {
  final BookEntity? book;
  const BookCoverItem({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
              aspectRatio: 2.55 / 4,
              child: CachedNetworkImage(
                imageUrl: book?.image ?? '',
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
