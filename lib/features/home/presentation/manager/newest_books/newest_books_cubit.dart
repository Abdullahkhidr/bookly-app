import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(NewestBooksInitial());

  final FetchNewestBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBooksFailure(message: failure.message));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
