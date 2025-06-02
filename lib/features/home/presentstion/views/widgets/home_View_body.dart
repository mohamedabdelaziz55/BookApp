import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_book_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBookListView(),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverFillRemaining(child:CutsomListViewBestSeller(),
            )
      ],
    );







  }
}

