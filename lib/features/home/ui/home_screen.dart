import 'package:flutter/material.dart';
import 'package:yalla_kora/core/dummydata/facilities_dummy_data.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/theme/Text_styles.dart';
import 'package:yalla_kora/features/home/ui/widgets/best_rate_facilities.dart';
import 'package:yalla_kora/features/home/ui/widgets/custom_search_text_field.dart';
import 'package:yalla_kora/features/home/ui/widgets/near_facilities_header.dart';
import 'package:yalla_kora/features/home/ui/widgets/near_facilities_section.dart';
import 'package:yalla_kora/features/signup/ui/widgets/location_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedText = 'القاهرة';

  void onSelected(String result) {
    selectedText = result;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 40.h(context)),
            LocationHeader(selectedText: selectedText, onSelected: onSelected),
            SizedBox(height: 10.h(context)),
            Directionality(
              textDirection: TextDirection.rtl,
              child: CustomSearchTextField(),
            ),
            SizedBox(height: 24.h(context)),
            Directionality(
              textDirection: TextDirection.rtl,
              child: NearFacilitiesHeader(),
            ),
            SizedBox(height: 18.h(context)),
            NearFacilitiesSection(facilities: dummyFacilities,),
            SizedBox(height: 20.h(context)),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h(context)),
                child: Text('الأعلى تقييماً', style: TextStyles.boldWhite16),
              ),
            ),
            SizedBox(height: 16.h(context)),
            BestRateFacilities(facilities: dummyFacilities,),
            SizedBox(height: 24.h(context)),
          ],
        ),
      ),
    );
  }
}
