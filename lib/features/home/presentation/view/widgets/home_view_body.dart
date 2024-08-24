import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_bloc_builder.dart';
import 'newest_sellers_list_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate.fixed([
          CustomAppBar(),
          FeaturedBooksListBlocBuilder(),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text('Newest Seller', style: TextStyles.style18)),
        ])),
        NewestSellersListBlocBuilder()
      ],
    );
  }
}
