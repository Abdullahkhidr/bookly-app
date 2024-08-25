import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCoverItem extends StatelessWidget {
  final BookEntity? book;
  final VoidCallback? onTap;
  const BookCoverItem({super.key, this.book, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
              aspectRatio: 2.55 / 4,
              child: book?.image != null
                  ? CachedNetworkImage(
                      imageUrl: book!.image!,
                      fit: BoxFit.cover,
                    )
                  : null),
        ),
      ),
    );
  }
}
