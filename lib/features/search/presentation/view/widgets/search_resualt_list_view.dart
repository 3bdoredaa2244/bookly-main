import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/search/presentation/manager/search_result_cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/views/widgets/home screen widgets/best_seller_list_view_item.dart';

class SearchResualtListView extends StatelessWidget {
  const SearchResualtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccessState) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            //physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, x) {
              return BestSellerListViewItem(books: state.books[x]);
            },
            itemCount: state.books.length,
          );
        } else if (state is SearchResultFailureState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is SearchResultLoadingState) {
          return const CustomLoadingWidget();
        } else {
          return const Center(child: Text('Enter word to search '));
        }
      },
    );
  }
}
