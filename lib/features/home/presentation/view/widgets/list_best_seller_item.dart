import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListBestSellerItem extends StatelessWidget {
  const ListBestSellerItem({super.key});

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
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Assets.testBookImage))),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Harry Potter and the Goblet of Fire',
                      style: TextStyles.style18),
                  const SizedBox(height: 3),
                  const Text('J.K Rowling', style: TextStyles.style14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('19.99 \$',
                          style: TextStyles.style20
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      const BookRating(),
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
