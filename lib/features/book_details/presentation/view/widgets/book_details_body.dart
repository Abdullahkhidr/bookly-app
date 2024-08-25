import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatelessWidget {
  final BookEntity book;
  const BookDetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BookDetailsSection(book: book),
              SizedBox(height: 18),
              BookRating(rating: book.rating.toDouble(), numOfRatings: 0),
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
