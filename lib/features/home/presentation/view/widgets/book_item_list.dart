import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItemList extends StatelessWidget {
  final BookEntity? book;
  const BookItemList({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Row(
          children: [
            SizedBox(
              height: 125,
              child: AspectRatio(
                  aspectRatio: 2.55 / 4,
                  child: (book?.image == null
                      ? null
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: CachedNetworkImage(
                            imageUrl: book!.image!,
                            fit: BoxFit.cover,
                          ),
                        ))),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(book?.title ?? '', style: TextStyles.style18),
                  const SizedBox(height: 3),
                  Text(book?.authorName ?? '', style: TextStyles.style14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                          (book?.price ?? 0.0) == 0.0
                              ? 'Free'
                              : '\$${book?.price}',
                          style: TextStyles.style20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      BookRating(
                          rating: book?.rating.toDouble() ?? 0,
                          numOfRatings: 0),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
