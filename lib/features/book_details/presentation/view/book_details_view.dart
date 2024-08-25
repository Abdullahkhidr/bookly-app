import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  final BookEntity book;
  const BookDetailsView({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsBody(book: book)),
    );
  }
}
