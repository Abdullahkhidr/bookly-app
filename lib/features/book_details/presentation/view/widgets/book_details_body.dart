import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_cover_item.dart';
import 'package:flutter/material.dart';

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
          CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .18),
            child: BookCoverItem(),
          ),
          const SizedBox(height: 24),
          Text('The Jungle Book', style: TextStyles.style30),
          const SizedBox(height: 6),
          Text('Rudyard Kipling',
              style: TextStyles.style18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}
