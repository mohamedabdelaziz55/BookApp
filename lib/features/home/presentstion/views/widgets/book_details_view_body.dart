import 'package:book_app/features/home/presentstion/views/widgets/similar_book_list_view.dart';
import 'package:book_app/features/home/presentstion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_detalis.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {

   return CustomScrollView(
     slivers: [
     SliverFillRemaining(
       hasScrollBody: false,
       child:Padding(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         child: SafeArea(
           child: Column(
             children: [
               CustomAppBarBookDetalis(),
       BookDetalisSection(),
               Expanded(child: const SizedBox(height: 50)),
               SimilarBookListView(),
               SizedBox(height: 40,)
             ],
           ),
         ),
       ) ,
     )
     ],
   );

  }
}

