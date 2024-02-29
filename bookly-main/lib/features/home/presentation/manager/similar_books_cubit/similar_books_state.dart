part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitialState extends SimilarBooksState {}

final class SimilarBooksLoadingState extends SimilarBooksState {}

final class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccessState(this.books);
}

final class SimilarBooksFailureState extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksFailureState(this.errorMessage);
}
