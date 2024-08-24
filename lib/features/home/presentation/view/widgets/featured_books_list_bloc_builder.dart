import 'package:bookly/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListBlocBuilder extends StatelessWidget {
  const FeaturedBooksListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return FeaturedBooksList(books: state.books);
        } else if (state is FeaturedBooksFailure) {
          return Text(state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
