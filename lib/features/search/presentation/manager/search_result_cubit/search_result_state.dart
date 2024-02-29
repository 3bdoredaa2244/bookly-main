part of 'search_result_cubit.dart';

sealed class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

final class SearchResultInitialState extends SearchResultState {}

final class SearchResultLoadingState extends SearchResultState {}

final class SearchResultSuccessState extends SearchResultState {
  final List<BookModel> books;

  const SearchResultSuccessState(this.books);
}

final class SearchResultFailureState extends SearchResultState {
  final String errorMessage;

  const SearchResultFailureState(this.errorMessage);
}
