import 'package:bookly/core/function/launcher_url.dart';
import 'package:bookly/core/utils/colors.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/models/book_model/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(
            height: 48,
            child: CustomButton(
                text: 'Free',
                textColor: AppColors.blackColor,
                backgroundColor: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 48,
            child: CustomButton(
                onPressed: () async {
                  await launcherBooksUrl(
                      context: context, bookUrl: books.volumeInfo.previewLink!);
                },
                text: getText,
                textColor: AppColors.whiteColor,
                backgroundColor: AppColors.pinkColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
        )
      ],
    );
  }

  String get getText {
    if (books.volumeInfo.previewLink != null) {
      return 'Free preview';
    } else {
      return 'Not available';
    }
  }
}
