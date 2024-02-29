import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'book_rating.dart';
import 'custom_image_item.dart';
import 'package:bookly/core/utils/styles.dart';
import '../../../../../../core/constants.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.books,
  });
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(31.w, 0, 51.w, 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.bookDetailsView, extra: books);
        },
        child: SizedBox(
          width: double.infinity,
          height: 105.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageItem(
                borderRadius: BorderRadius.all(Radius.circular(16.r)),
                imageUrl: books.volumeInfo.imageLinks?.thumbnail ??
                    'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930',
              ),
              SizedBox(
                width: 30.w,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 184.w,
                      child: Text(
                        books.volumeInfo.title ?? 'unknown',
                        style: Styles.textStyle20
                            .copyWith(fontFamily: gTSectraFine, height: .95),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Opacity(
                      opacity: .5,
                      child: Text(
                        books.volumeInfo.authors?[0] ?? 'unknown',
                        style: Styles.textStyle14,
                        maxLines: 1,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        const BookRating(rating: 0, count: 0),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
