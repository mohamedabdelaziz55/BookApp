import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constents.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_Book_rating.dart';

class CustomBestSeller extends StatelessWidget {
  const CustomBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
     onTap: (){
       GoRouter.of(context).push(AppRouter.kBookDetailsView);
     },
     
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: h * .17,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.7 / 4,
                child: Container(
                  height: h * .28,
                  width: w * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w * .04),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(AssetsData.testImage),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("j.k.Rowling", style: Styles.textStyle14),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 35),
                      BookRating()
      
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
