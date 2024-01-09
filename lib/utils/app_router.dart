import 'package:airbnb_clone/screens/booking_detail_screen.dart';
import 'package:airbnb_clone/screens/home_screen.dart';
import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: 'home',
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
      ),
      GoRoute(
        name: 'booking_detail_screen',
        path: '/booking_detail_screen',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          opaque: false,
          barrierColor: appBlack.withOpacity(0.5),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child,
          child: const BookingDetailScreen(),
        ),
      ),
    ],
  );
}
