import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:yalla_kora/core/widgets/liquid_glass_nav_bar.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import '../../../core/constants/app_images.dart';
import '../../my_bookings/ui/my_bookings_screen.dart';

final navBarIndexProvider = StateProvider<int>((ref) => 0);

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navBarIndexProvider);

    final screens = [
      const HomeScreen(),
      const SearchScreen(),
      const MyBookingsScreen(),
      const ProfileScreen(),
    ];

    // final navBarHeight = 62.0 + 10.0 * 2 + MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: screens[currentIndex]),

          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom,
            child: LiquidGlassNavBar(
              currentIndex: currentIndex,
              onTap: (index) {
                ref.read(navBarIndexProvider.notifier).state = index;
              },
              items: const [
                NavBarItem(icon: Assets.home, label: 'الرئيسية'),
                NavBarItem(icon: Assets.search, label: 'بحث'),
                NavBarItem(icon: Assets.booking, label: 'حجوزاتي'),
                NavBarItem(icon: Assets.profile, label: 'حسابي'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: const Center(
        child: Text(
          'البحث',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

// class BookingScreen extends StatelessWidget {
//   const BookingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: const Center(
//         child: Text(
//           'حجوزاتي',
//           style: TextStyle(color: Colors.white, fontSize: 24),
//         ),
//       ),
//     );
//   }
// }

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'الملف الشخصي',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
