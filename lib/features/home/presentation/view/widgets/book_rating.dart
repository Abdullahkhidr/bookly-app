import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 16, color: Colors.yellow[700]),
        const SizedBox(width: 6),
        Text('4.9',
            style: TextStyles.style16.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(width: 3),
        Text('(245)',
            style: TextStyles.style14
                .copyWith(color: Colors.grey, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
