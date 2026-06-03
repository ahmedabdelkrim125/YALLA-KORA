import 'package:flutter/material.dart';
import 'package:yalla_kora/core/helper/helper_functions/get_players_count.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/checkout_bottom_bar.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/joined_players_card.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/match_details_header.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/match_info_card.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/Widgets/match_organizer_card.dart';
import '../../../core/helper/extensions.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import 'Widgets/match_date_time_card.dart';

class MatchDetailsScreen extends StatelessWidget {
  const MatchDetailsScreen({super.key, required this.match});

  final MatchModel match;
  @override
  Widget build(BuildContext context) {
    final totalPlayers = getPlayersCount(match.field.type);
    return Scaffold(
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              MatchDetailsHeader(),
              verticalSpace(context, height: 12),
              MatchInfoCard(
                fieldNameType: '${match.field.name} - ${match.field.type}',
                fieldLocation: match.field.location.name,
                playersNeeded: match.playersNeeded,
                pricePerPlayer: '${match.pricePerPlayer}',
              ),
              verticalSpace(context, height: 16),
              MatchDateTimeCard(time: match.time, date: match.date,),
              verticalSpace(context, height: 24),
              JoinedPlayersCard(
                player: match.players,
                totalPlayers: totalPlayers,
                playersJoined: totalPlayers - match.playersNeeded,
              ),
              verticalSpace(context, height: 8),
              MatchOrganizerCard(organizerName: match.creator.name,),
              verticalSpace(context, height: 21.74),
              CheckoutBottomBar(
                price: match.pricePerPlayer.toString(),
                onPressed: () {
                  context.pushNamed(Routes.checkoutScreen);
                },
              ),
              verticalSpace(context, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
