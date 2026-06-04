import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yalla_kora/core/networking/error_hander.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_request_body.dart';
import 'package:yalla_kora/features/booking_confirmation/data/models/booking_response.dart';
import 'package:yalla_kora/features/booking_confirmation/data/repo/booking_repo.dart';

import '../../../core/networking/api_result.dart';

part 'booking_state.dart';
part 'booking_cubit.freezed.dart';

class BookingCubit extends Cubit<BookingState> {
  final BookingRepo bookingRepo;
  BookingCubit({required this.bookingRepo}) : super(const BookingState.initial());

  String selectedPaymentMethod = 'cash';

  void confirmBooking({
    required String fieldId,
    required String date,
    required String timeFrom,
    required String timeTo,
    required int playersCount,
    required String type,
  }) async {
    emit(const BookingState.loading());
    final result = await bookingRepo.createBooking(
      body: BookingRequestBody(
        fieldId: fieldId,
        date: date,
        timeFrom: timeFrom,
        timeTo: timeTo,
        playersCount: playersCount,
        type: type,
        paymentMethod: selectedPaymentMethod,
      ),
    );
    result.when(
      success: (response) => emit(BookingState.success(response.data)),
      failure: (error) => emit(BookingState.failure(error)),
    );
  }
}