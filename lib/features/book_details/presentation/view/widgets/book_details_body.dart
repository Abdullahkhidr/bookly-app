import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'custom_details_app_bar.dart';
import 'similar_books_list.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const CustomDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .23),
                child: const BookCoverItem(),
              ),
              const SizedBox(height: 24),
              const Text('The Jungle Book', style: TextStyles.style25),
              const SizedBox(height: 6),
              Text('Rudyard Kipling',
                  style: TextStyles.style18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal)),
              const SizedBox(height: 18),
              const BookRating(),
              const BookAction(),
              Expanded(child: const SizedBox(height: 50)),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like',
                      style: TextStyles.style14
                          .copyWith(fontWeight: FontWeight.bold)),
                ),
              ),
              const SimilarBooksList(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
