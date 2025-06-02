
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'books_action.dart';
import 'custom_Book_rating.dart';
import 'custom_book_item.dart';

class BookDetalisSection extends StatelessWidget {
  const BookDetalisSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: w * .17),
        child: CustomBookImage(imageUrl: AssetsData.testImage,),
      ),
      const SizedBox(height: 34),
      Text("The Jungle Book", style: Styles.textStyle30),

      const SizedBox(height: 6),
      Opacity(
        opacity: .7,
        child: Text("Rudyard Kipling", style: Styles.textStyle18),
      ),
      const SizedBox(height: 16),
      // BookRating(mainAxisAlignment: MainAxisAlignment.center),
      const SizedBox(height: 34),
      BooksAction(),
    ],);
  }
}