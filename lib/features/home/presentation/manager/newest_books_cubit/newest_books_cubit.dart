import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  final HomeRepo homeRepo;
  Future fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var responce = await homeRepo.fetchNewsetBooks();
    responce.fold((failure) {
      emit(NewestBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBooksSuccessState(books));
    });
  }
}
