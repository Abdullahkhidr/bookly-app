import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookCoverItem extends StatelessWidget {
  const BookCoverItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: AspectRatio(
          aspectRatio: 2.55 / 4,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.testBookImage))),
          ),
        ),
      ),
    );
  }
}
