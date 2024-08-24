import 'package:bookly/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListBlocBuilder extends StatefulWidget {
  const FeaturedBooksListBlocBuilder({super.key});

  @override
  State<FeaturedBooksListBlocBuilder> createState() =>
      _FeaturedBooksListBlocBuilderState();
}

class _FeaturedBooksListBlocBuilderState
    extends State<FeaturedBooksListBlocBuilder> {
  int nextPage = 1;
  late final ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    var maxScrollExtent = _scrollController.position.maxScrollExtent;
    var pixels = _scrollController.position.pixels;
    if (pixels >= maxScrollExtent * .7) {
      BlocProvider.of<FeaturedBooksCubit>(context)
          .fetchFeaturedBooks(pageNumber: nextPage++);
    }
  }

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
