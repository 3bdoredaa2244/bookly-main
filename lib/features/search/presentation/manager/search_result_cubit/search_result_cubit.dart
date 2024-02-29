import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/models/book_model/book_model.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitialState());
  final SearchRepo searchRepo;
  Future fetchSearchResult({required String query}) async {
    emit(SearchResultLoadingState());
    var resualt = await searchRepo.fetchSearchResualt(query: query);
    resualt.fold((failure) {
      emit(SearchResultFailureState(failure.errorMessage));
    }, (resualt) {
      emit(SearchResultSuccessState(resualt));
    });
  }
}
