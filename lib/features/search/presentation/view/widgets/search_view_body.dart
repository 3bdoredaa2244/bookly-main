import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_filed.dart';
import 'search_resualt_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomSearchTextField(),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Search Resualt',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(child: SearchResualtListView()),
      ],
    );
  }
}
