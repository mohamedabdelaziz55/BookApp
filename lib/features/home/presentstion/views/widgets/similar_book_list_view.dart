
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text("You can also like", style: Styles.textStyle14, )),
        const SizedBox(height: 17),
        SizedBox(
          height: MediaQuery.of(context).size.height * .18,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,

            itemBuilder: (context, index) {
              return CustomBookImage(imageUrl: AssetsData.testImage,);
            },
          ),
        ),
      ],
    );
  }
}
