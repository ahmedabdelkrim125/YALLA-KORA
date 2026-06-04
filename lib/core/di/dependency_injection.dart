import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:yalla_kora/core/networking/api_service.dart';
import 'package:yalla_kora/core/networking/dio_factory.dart';
import 'package:yalla_kora/core/service/location_service.dart';
import 'package:yalla_kora/features/booking_confirmation/data/repo/booking_repo.dart';
import 'package:yalla_kora/features/booking_confirmation/data/repo/booking_repo_impl.dart';
import 'package:yalla_kora/features/booking_confirmation/logic/booking_cubit.dart';
import 'package:yalla_kora/features/facility-details/data/repo/available_time_repo.dart';
import 'package:yalla_kora/features/facility-details/data/repo/available_time_repo_impl.dart';
import 'package:yalla_kora/features/facility-details/logic/calendar_cubit/calendar_cubit.dart';
import 'package:yalla_kora/features/home/data/event_matches/repo/event_matches_repo.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo.dart';
import 'package:yalla_kora/features/home/data/near_facilities/repo/near_facilities_repo_impl.dart';
import 'package:yalla_kora/features/home/logic/event_matches/event_matches_cubit.dart';
import 'package:yalla_kora/features/home/logic/near_facilities/near_facilities_cubit.dart';
import 'package:yalla_kora/features/login/data/repo/login_repo.dart';
import 'package:yalla_kora/features/login/logic/login_cubit.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/repo/join_match_repo.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/data/repo/join_match_repo_impl.dart';
import 'package:yalla_kora/features/match_details_and_checkout/ui/logic/join_match_cubit.dart';
import 'package:yalla_kora/features/signup/data/repo/signup_repo.dart';
import 'package:yalla_kora/features/signup/data/repo/signup_repo_impl.dart';
import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';

import '../../features/facility-details/logic/available_time_cubit.dart';
import '../../features/home/data/event_matches/repo/event_matches_repo_impl.dart';
import '../../features/login/data/repo/login_repo_impl.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepoImpl(apiService: getIt()),
  );
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepoImpl(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // event matches
  getIt.registerLazySingleton<EventMatchesRepo>(
    ()=> EventMatchesRepoImpl(apiService: getIt<ApiService>())
  );
  getIt.registerFactory<EventMatchesCubit>(() => EventMatchesCubit(getIt()));

  // near facilities
  getIt.registerLazySingleton<NearFacilitiesRepo>(
    ()=> NearFacilitiesRepoImpl(apiService: getIt<ApiService>())
  );
  getIt.registerFactory<NearFacilitiesCubit>(() => NearFacilitiesCubit(getIt()));

  getIt.registerSingleton<LocationService>(LocationService());

  // available times
  getIt.registerLazySingleton<AvailableTimeRepo>(
    ()=> AvailableTimeRepoImpl(apiService: getIt<ApiService>())
  );
  getIt.registerFactory<AvailableTimeCubit>(() => AvailableTimeCubit(availableTimeRepo: getIt<AvailableTimeRepo>()));

  // Calendar cubit
  getIt.registerFactory<CalendarCubit>(()=> CalendarCubit());

  // Booking
  getIt.registerLazySingleton<BookingRepo>(
        () => BookingRepoImpl(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<BookingCubit>(
        () => BookingCubit(bookingRepo: getIt<BookingRepo>()),
  );

  // Join Match
  getIt.registerLazySingleton<JoinMatchRepo>(
        () => JoinMatchRepoImpl(apiService: getIt<ApiService>()),
  );
  getIt.registerFactory<JoinMatchCubit>(
        () => JoinMatchCubit(getIt<JoinMatchRepo>()),
  );
}
