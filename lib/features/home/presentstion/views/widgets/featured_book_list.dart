import 'package:flutter/material.dart';

import 'custom_book_item.dart';


class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return CustomBookImage();
        },
      ),
    );
  }
}
