import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/presentstion/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constents.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_Book_rating.dart';

class CustomBestSeller extends StatelessWidget {
  const CustomBestSeller({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: h * .17,
          child: Row(
            children: [
              CustomBookImage(imageUrl: book.volumeInfo.imageLinks!.thumbnail),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,

                    child: Text(
                      book.volumeInfo.authors![0],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 35),
                      BookRating(
                        count: book.volumeInfo.ratingsCount?? 0,
                        rate: book.volumeInfo.averageRating ??0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
