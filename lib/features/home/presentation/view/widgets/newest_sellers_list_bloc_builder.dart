import 'package:bookly/features/home/presentation/manager/newest_books/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_sellers_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestSellersListBlocBuilder extends StatelessWidget {
  const NewestSellersListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return NewestSellersList(books: state.books);
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(child: Text(state.message));
        } else {
          return SliverToBoxAdapter(
              child: const Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
