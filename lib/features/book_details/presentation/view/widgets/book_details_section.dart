import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final BookEntity book;
  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .23),
            child: BookCoverItem(book: book)),
        const SizedBox(height: 24),
        Text(book.title,
            textAlign: TextAlign.center, style: TextStyles.style25),
        const SizedBox(height: 6),
        Text(book.authorName,
            style: TextStyles.style18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
      ],
    );
  }
}
