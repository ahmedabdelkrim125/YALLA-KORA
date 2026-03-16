import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/widgets/user_header/user_header.dart';
import 'package:yalla_kora/features/search/ui/widgets/JoinMatchBody.dart';
import 'widgets/search_field_with_filter.dart';
import 'widgets/search_action_buttons.dart';
import 'widgets/booking_body.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.darkBackground,
        body: SafeArea(
          child: Column(
            children: [
              UserHeader(greeting: "أهلاً يا عالمي،", userName: "عمر إيهاب"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
                child: Column(
                  children: [
                    verticalSpace(context, height: 10),
                    const SearchFieldWithFilter(),
                    verticalSpace(context, height: 24),

                    SearchActionButtons(
                      selectedIndex: selectedIndex,
                      onTabChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    verticalSpace(context, height: 24),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: selectedIndex == 0
                        ? const BookingBody(key: ValueKey(0))
                        : const JoinMatchBody(key: ValueKey(1)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
