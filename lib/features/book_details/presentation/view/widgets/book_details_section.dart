import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/book_details/presentation/view/widgets/custom_details_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .23),
            child: const BookCoverItem()),
        const SizedBox(height: 24),
        const Text('The Jungle Book', style: TextStyles.style25),
        const SizedBox(height: 6),
        Text('Rudyard Kipling',
            style: TextStyles.style18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
      ],
    );
  }
}
