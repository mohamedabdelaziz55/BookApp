 import 'package:book_app/core/utils/widgets/custom_error_widget.dart';
import 'package:book_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:book_app/features/home/presentstion/manger/newest_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_best_seller.dart';

class CutsomListViewBestSeller extends StatelessWidget {
  const CutsomListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {

        if(state is NewsetBooksSuccess){
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return CustomBestSeller(book: state.books[index],);
            },);
        }else if(state is NewsetBooksFailure ){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
           return CustomLoadingIndicator();
        }


      },
    );
  }
}

