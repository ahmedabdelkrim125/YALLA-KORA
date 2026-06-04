import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/helper/responsive_extensions.dart';
import 'package:yalla_kora/core/helper/spacing.dart';
import 'package:yalla_kora/core/theme/app_colors.dart';
import 'package:yalla_kora/core/theme/text_styles.dart';
import 'package:yalla_kora/core/utils/date_time_formatter.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/core/widgets/modern_dialog_helper.dart';
import 'package:yalla_kora/features/home/data/event_matches/models/match_model.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/logic/join_match_cubit.dart';
import '../../../core/helper/extensions.dart';
import '../../../core/routing/routes.dart';
import '../../booking_confirmation/ui/widgets/booking_confirmation_widgets/payment_method_selection.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key, required this.match});
  final MatchModel match;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              _buildHeader(context),
              Expanded(
                child: SingleChildScrollView(
                  padding: context.responsivePadding(
                    horizontal: 20,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMatchSummaryCard(context, match: match),
                      verticalSpace(context, height: 32),
                      Text(
                        'اختر طريقة الدفع',
                        style: TextStyles.boldWhite16.copyWith(height: 1.50),
                      ),
                      verticalSpace(context, height: 12),
                      const PaymentMethodSection(),
                    ],
                  ),
                ),
              ),
              _buildBottomCheckoutBar(context, pricePerPerson: match.pricePerPlayer.toString()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 20, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 40.w(context)),
          Text(
            'تأكيد الانضمام',
            style: TextStyles.boldWhite18.copyWith(height: 1.50),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 40.w(context),
              height: 40.h(context),
              decoration: BoxDecoration(
                color: AppColors.cardBg2,
                borderRadius: BorderRadius.circular(12.r(context)),
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 18.r(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMatchSummaryCard(BuildContext context, {required MatchModel match}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r(context)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.card2,
          borderRadius: BorderRadius.circular(16.r(context)),
          border: Border.all(width: 0.5, color: AppColors.slateGray50),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 4.w(context),
                decoration: const BoxDecoration(color: AppColors.yellow),
              ),
              Expanded(
                child: Padding(
                  padding: context.responsivePadding(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'كابتن ${match.creator.name}',
                                style: TextStyles.boldWhite16.copyWith(
                                  height: 1.50,
                                ),
                              ),
                              Text(
                                'منظم التقسيمة',
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 52.w(context),
                            height: 52.h(context),
                            padding: EdgeInsets.all(1.5.w(context)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2.w(context),
                                color: AppColors.primaryGreen,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.network(
                                match.creator.avatar ?? Assets.player3,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) =>
                                    Container(color: AppColors.darkAvatarBg),
                              ),
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(context, height: 16),
                      Container(
                        height: 1.h(context),
                        color: AppColors.slateGray50,
                      ),
                      verticalSpace(context, height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: AppColors.orangeColor,
                                    size: 18.r(context),
                                  ),
                                  horizontalSpace(context, width: 6),
                                  Text(
                                    DateTimeFormatter.timeToArabic12Hour(match.time),
                                    style: TextStyles.boldWhite15.copyWith(
                                      height: 1.80,
                                    ),
                                  ),
                                ],
                              ),
                              verticalSpace(context, height: 4),
                              Text(
                                '60 دقيقة',
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    DateTimeFormatter.dayFromDate(match.date),
                                    style: TextStyles.boldWhite15.copyWith(
                                      height: 1.80,
                                    ),
                                  ),
                                  horizontalSpace(context, width: 6),
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    color: AppColors.primaryGreen,
                                    size: 18.r(context),
                                  ),
                                ],
                              ),
                              verticalSpace(context, height: 4),
                              Text(
                                DateTimeFormatter.dateToArabic(match.date),
                                style: TextStyles.regularMuted12.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomCheckoutBar(BuildContext context, {required String pricePerPerson}) {
    return Container(
      width: double.infinity,
      padding: context.responsivePadding(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(color: AppColors.darkBackground),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$pricePerPerson ج.م',
                style: TextStyles.boldWhite15.copyWith(height: 1.50),
              ),
              Text('حصة الفرد', style: TextStyles.regularSlateGray15),
            ],
          ),
          verticalSpace(context, height: 12),
          Container(height: 1.h(context), color: AppColors.slateGray50),
          verticalSpace(context, height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$pricePerPerson ج.م', style: TextStyles.boldPrimaryGreen24),
              Text(
                'الإجمالي',
                style: TextStyles.boldWhite18.copyWith(height: 1.50),
              ),
            ],
          ),
          verticalSpace(context, height: 24),
          BlocConsumer<JoinMatchCubit, JoinMatchState>(
            listener: (context, state) {
              state.whenOrNull(
                success: (response) => context.pushNamedAndRemoveUntil(
                  Routes.joinMatchSuccessScreen,
                  arguments: response.match ,
                  predicate: (route) => route.isFirst,
                ),
                failure: (error) {
                  ModernDialog.showError(context: context, message: error.apiErrorModel.message,);
                }
              );
            },
            builder: (context, state) {
              final isLoading = state is JoinMatchLoading;
              return AppButton(
                title: isLoading ? 'جاري الانضمام...' : 'انضم للتقسيمة !',
                width: double.infinity,
                height: 60.h(context),
                borderRadius: 16,
                textStyle: TextStyles.extraBoldBlack18,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3300FE81),
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  ),
                ],
                onPressed: isLoading
                    ?() {}
                    :()=> context.read<JoinMatchCubit>().joinMatch(matchId: match.id),
              );
            },
          ),
        ],
      ),
    );
  }
}
