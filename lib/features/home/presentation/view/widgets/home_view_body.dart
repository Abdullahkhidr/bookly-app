import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_books_list.dart';
import 'list_best_seller_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate.fixed([
          CustomAppBar(),
          FeaturedBooksList(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text('Best Seller', style: TextStyles.style18),
          ),
        ])),
        BestSellersList()
      ],
    );
  }
}

class BestSellersList extends StatelessWidget {
  const BestSellersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ListBestSellerItem();
      },
    );
  }
}
