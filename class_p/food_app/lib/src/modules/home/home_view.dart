import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:json_test/src/data/global_widgets/title_with_see_all.dart';
import 'package:json_test/src/modules/all_promos/view/all_promo_view.dart';
import 'package:json_test/src/modules/home/local_widgets/home_grettings.dart';
import 'package:json_test/src/modules/home/local_widgets/home_icon_list.dart';
import 'package:json_test/src/modules/home/local_widgets/home_location.dart';
import 'package:json_test/src/modules/home/local_widgets/todays_promo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeLocation(),
              SizedBox(height: 10.h),
              const HomeGreeting(),
              SizedBox(height: 20.h),
              const IconLIst(),
              SizedBox(height: 10.h),
              TitleWithSeeAll(
                title: 'Today\'s Promo',
                buttonText: 'See all',
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const AllPromoView(),
                    ),
                  );
                },
              ),
              const TodayPromo(),
            ],
          ),
        ),
      ),
    );
  }
}
