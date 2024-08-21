import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverFillRemaining(
          child: Column(
            children: [
              BookDetailsSection(),
              SizedBox(height: 18),
              BookRating(),
              BookAction(),
              Expanded(child: SizedBox(height: 50)),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
