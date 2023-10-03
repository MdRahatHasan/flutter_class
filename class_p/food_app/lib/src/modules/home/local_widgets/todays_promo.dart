import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:json_test/src/data/global_widgets/food_item.dart';
import 'package:json_test/src/services/home_services.dart';
import 'package:provider/provider.dart';

class TodayPromo extends StatefulWidget {
  const TodayPromo({super.key});

  @override
  State<TodayPromo> createState() => _TodayPromoState();
}

class _TodayPromoState extends State<TodayPromo> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeServices>(
      builder: (context, foodProvider, child) => Container(
        height: 270.h,
        width: MediaQuery.sizeOf(context).width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodProvider.itemList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  FoodItem(
                    image: foodProvider.itemList[index]['image'],
                    title: foodProvider.itemList[index]['title'],
                    subTItle: foodProvider.itemList[index]['sub_title'],
                    currentPrice: foodProvider.itemList[index]['current_price'],
                    regularPrice: foodProvider.itemList[index]['regular_price'],
                    stock: foodProvider.itemList[index]['stock'],
                  ),
                  const SizedBox(width: 16)
                ],
              );
            }),
      ),
    );
  }
}
