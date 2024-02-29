import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/home%20screen%20widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/home%20screen%20widgets/custom_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_action.dart';
import 'book_details_app_bar.dart';
import 'similar_book_details_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BookDetailsAppBar(),
          ),
          const SizedBox(
            height: 33,
          ),
          SizedBox(
              width: 162.w,
              child: CustomImageItem(
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  imageUrl: books.volumeInfo.imageLinks?.thumbnail ??
                      'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930')),
          const SizedBox(
            height: 43,
          ),
          Text(
            books.volumeInfo.title ?? 'Un known title',
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              books.volumeInfo.authors?[0] ?? 'Un known author',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BookRating(
            count: 0,
            rating: 0,
          ),
          const SizedBox(
            height: 37,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: BookAction(
              books: books,
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          const SimilarBookDetailsListView()
        ],
      ),
    );
  }
}
