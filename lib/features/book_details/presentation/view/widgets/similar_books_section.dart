import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also like',
                style:
                    TextStyles.style14.copyWith(fontWeight: FontWeight.bold)),
          ),
        ),
        const SimilarBooksList(),
        const SizedBox(height: 20),
      ],
    );
  }
}
