// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:yalla_kora/core/di/dependency_injection.dart';
// import 'package:yalla_kora/features/home/ui/home_screen.dart';
// import 'package:yalla_kora/features/login/logic/login_cubit.dart';
// import 'package:yalla_kora/features/onboarding/ui/on_boarding_screen.dart';
// import 'package:yalla_kora/features/signup/logic/signup_cubit.dart';
// import '../../features/OTP/ui/otp_screen.dart';
// import '../../features/home/ui/main_screen.dart';
// import '../../features/signup/ui/role_selection_screen.dart';
// import 'routes.dart';
// import '../../features/login/ui/login_screen.dart';
// import '../../features/signup/ui/signup_screen.dart';

// class AppRouter {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case Routes.onBoardingScreen:
//         return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

//       case Routes.loginScreen:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => getIt<LoginCubit>(),
//             child: const LoginScreen(),
//           ),
//         );
//       case Routes.signupScreen:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => getIt<SignupCubit>(),
//             child: const SignupScreen(),
//           ),
//         );
//       case Routes.roleSelectionScreen:
//         return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());
//       case Routes.otpScreen:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => getIt<SignupCubit>(),
//             child: const OtpScreen(),
//           ),
//         );

//       case Routes.mainScreen:
//         return MaterialPageRoute(builder: (_) => const MainScreen());

//       case Routes.homeScreen:
//         return MaterialPageRoute(builder: (_) => const HomeScreen());
//       default:
//         return MaterialPageRoute(
//           builder: (_) =>
//               const Scaffold(body: Center(child: Text("Route not found"))),
//         );
//     }
//   }
// }
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
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NearFacilitiesCubit>()..loadInitialFields(settings.arguments as List<FieldModel>),
            child: ViewAllFieldsScreen(),
          ),
        );
      case Routes.viewAllMatchesScreen:
        return MaterialPageRoute(
          builder: (_) => ViewAllMatchesScreen(
            matches: settings.arguments as List<MatchModel>,
          )
        );

      case Routes.facilityDetails:
        return MaterialPageRoute(builder: (_) => FacilityDetails(field: settings.arguments as FieldModel,));
      case Routes.bookingConfirmation:
        return MaterialPageRoute(builder: (_) => const BookingConfirmationScreen());
      case Routes.successBooking:
        return MaterialPageRoute(builder: (_) => const SuccessBookingScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
