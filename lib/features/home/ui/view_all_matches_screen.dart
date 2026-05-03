import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/home/ui/widgets/custom_app_bar.dart';
import 'package:yalla_kora/features/home/ui/widgets/matches_list.dart';

class ViewAllMatchesScreen extends StatelessWidget {
  const ViewAllMatchesScreen({super.key, required this.matches});

  final List<MatchModel> matches;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(text: 'جميع الملاعب',),
        body: Padding(
          padding: context.responsivePadding(top: 20),
          child: MatchesList(matches: matches),
        ),
      ),
    );
  }
}
