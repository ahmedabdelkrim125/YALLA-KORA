import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:yalla_kora/core/constants/app_images.dart';
import 'package:yalla_kora/core/widgets/liquid_glass_nav_bar.dart';
import 'package:yalla_kora/features/account/ui/account_screen.dart';
import 'package:yalla_kora/features/home/ui/home_screen.dart';
import 'package:yalla_kora/features/search/ui/search_screen.dart';
import '../../my_bookings/ui/my_bookings_screen.dart';

final navBarIndexProvider = StateProvider<int>((ref) => 0);

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navBarIndexProvider);

    final List<Widget> screens = [
      const HomeScreen(),
      const SearchScreen(), 
      const MyBookingsScreen(),
      const AccountScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: IndexedStack(
              index: currentIndex,
              children: screens,
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).padding.bottom + 10, 
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