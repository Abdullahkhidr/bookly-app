import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'custom_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: const BookCoverItem(),
          ),
          const SizedBox(height: 24),
          const Text('The Jungle Book', style: TextStyles.style25),
          const SizedBox(height: 6),
          Text('Rudyard Kipling',
              style: TextStyles.style18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
          const SizedBox(height: 18),
          const BookRating(),
          const BookAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like',
                style:
                    TextStyles.style14.copyWith(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          const SimilarBooksList()
        ],
      ),
    );
  }
}

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BookCoverItem();
        },
      ),
    );
  }
}
