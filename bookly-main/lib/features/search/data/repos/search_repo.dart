import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchResualt(
      {required String query});
}
