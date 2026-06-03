import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_kora/core/di/dependency_injection.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/booking_confirmation_screen.dart';
import 'package:yalla_kora/features/booking_confirmation/ui/success_booking_screen.dart';
import 'package:yalla_kora/features/facility-details/ui/facility_details.dart';
import 'package:yalla_kora/features/home/logic/event_matches/event_matches_cubit.dart';
import 'package:yalla_kora/features/home/logic/near_facilities/near_facilities_cubit.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/home/ui/view_all_fields_screen.dart';
import 'package:yalla_kora/features/home/ui/view_all_matches_screen.dart';
import 'package:yalla_kora/features/login/logic/login_cubit.dart';
import 'package:yalla_kora/features/onboarding/ui/on_boarding_screen.dart';
import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';
import 'package:yalla_kora/features/splash/ui/splash_screen.dart';
import '../../features/OTP/ui/otp_screen.dart';
import '../../features/home/data/event_matches/models/match_model.dart';
import '../../features/home/data/near_facilities/model/field_model.dart';
import '../../features/home/ui/main_screen.dart';
import '../../features/match_details_and_checkout/ui/checkout_screen.dart';
import '../../features/match_details_and_checkout/ui/match_details_screen.dart';
import '../../features/signup/ui/role_selection_screen.dart';
import 'routes.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/signup/ui/signup_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signupScreen:
        final role = settings.arguments as String? ?? 'player';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: SignupScreen(accountRole: role),
          ),
        );

      case Routes.roleSelectionScreen:
        return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());

      case Routes.otpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const OtpScreen(),
          ),
        );

      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<NearFacilitiesCubit>()..emitNearFacilitiesStates()),
            BlocProvider(create: (_) => getIt<EventMatchesCubit>()..emitEventMatchesStates()),
          ],
            child: MainScreen(),
          )
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.viewAllFieldsScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
            getIt<NearFacilitiesCubit>()..loadInitialFields(
              initFields: args['fields'] as List<FieldModel>,
              totalFields: args['total'] as int,
              totalPages: args['totalPages'] as int,
            ),
            child: ViewAllFieldsScreen(),
          ),
        );
      case Routes.viewAllMatchesScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<EventMatchesCubit>()..loadInitialMatches(
              initMatches: args['matches'] as List<MatchModel>,
              totalMatches: args['totalMatches'] as int,
              totalPages: args['totalPages'] as int
            ), child: ViewAllMatchesScreen(),
          )
        );

      case Routes.facilityDetails:
        return MaterialPageRoute(builder: (_) => FacilityDetails(field: settings.arguments as FieldModel,));
      case Routes.bookingConfirmation:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => BookingConfirmationScreen(
            field: args['field'] as FieldModel,
            date: args['date'] as String,
            timeRange: args['timeRange'] as String,
          ),
        );
      case Routes.successBooking:
        return MaterialPageRoute(builder: (_) => const SuccessBookingScreen());

      case Routes.matchDetailsScreen:
        final args = settings.arguments as MatchModel;
        return MaterialPageRoute(builder: (_) => MatchDetailsScreen(match: args,));
      case Routes.checkoutScreen:
        final args = settings.arguments as MatchModel;
        return MaterialPageRoute(builder: (_) => CheckoutScreen(match: args,));

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
