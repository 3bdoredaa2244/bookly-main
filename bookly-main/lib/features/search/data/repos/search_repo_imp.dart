import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;
  SearchRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResualt(
      {required String query}) async {
    try {
      var resualt = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=$query');
      List<BookModel> books = [];
      for (var item in resualt['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      } else {
        return left(ServerFailures(e.toString()));
      }
    }
  }
}
