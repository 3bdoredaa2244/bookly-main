import 'package:bookly/features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter your search words, must not be empty';
        }
        return null;
      },
      controller: searchController,
      onChanged: (value) {
        BlocProvider.of<SearchResultCubit>(context)
            .fetchSearchResult(query: searchController.text);
      },
      decoration: const InputDecoration(
          hintText: 'search',
          suffixIcon: Icon(
            Icons.search_outlined,
            color: AppColors.whiteColor,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
    );
  }
}
