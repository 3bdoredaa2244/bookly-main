part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitialState extends NewestBooksState {}

final class NewestBooksLoadingState extends NewestBooksState {}

final class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccessState(this.books);
}

final class NewestBooksFailureState extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailureState(this.errorMessage);
}
