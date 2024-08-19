import 'package:flutter/material.dart';

import 'custom_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [CustomDetailsAppBar()],
      ),
    );
  }
}
