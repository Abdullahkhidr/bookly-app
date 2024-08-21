import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: const Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundColor: Color(0xffef8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
