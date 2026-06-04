import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/helper/extensions.dart';
import 'package:yalla_kora/core/routing/routes.dart';
import 'package:yalla_kora/core/utils/date_time_formatter.dart';
import 'package:yalla_kora/core/widgets/app_button.dart';
import 'package:yalla_kora/core/widgets/modern_dialog_helper.dart';
import 'package:yalla_kora/features/booking_confirmation/logic/booking_cubit.dart';
import 'package:yalla_kora/features/home/data/near_facilities/model/field_model.dart';
import '../../../../../core/helper/helper_functions/get_players_count.dart';
import '../../../../../core/helper/responsive_extensions.dart';

class ConfirmBookingButton extends StatelessWidget {
  const ConfirmBookingButton(
      {super.key, required this.totalPrice, required this.field, required this.date, required this.timeFrom});

  final String totalPrice;
  final FieldModel field;
  final String date;
  final String timeFrom;

  // حساب timeTo (بعد ساعة)
  String _calcTimeTo(String from) {
    final parts = from.split(':');
    final hour = int.parse(parts[0]);
    final min = parts[1];
    return '${(hour + 1).toString().padLeft(2, '0')}:$min';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16, vertical: 16),
      child: BlocConsumer<BookingCubit, BookingState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (response) => context.pushNamedAndRemoveUntil(
              Routes.successBooking,
              arguments: response.booking ,
              predicate: (route) => route.isFirst,
            ),
            failure: (error) {
            ModernDialog.showError(
              context: context,
              message: error.apiErrorModel.message,
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state is BookingLoading;
          return AppButton(
            title: !isLoading ? 'تأكيد الحجز بـ $totalPrice ج' : 'جاري الحجز...',
            onPressed: switch(state){
              BookingLoading() => () => {},
              BookingState() => (){
                context.read<BookingCubit>().confirmBooking(
                  fieldId: field.id,
                  date: DateTimeFormatter.dateFromArabicDate(date),
                  timeFrom: timeFrom,
                  timeTo: _calcTimeTo(timeFrom),
                  playersCount: getPlayersCount(field.type.id),
                  type: field.type.id,

                );
              },
            },
          );
        },
      ),
    );
  }
}
