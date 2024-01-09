import 'package:airbnb_clone/screens/booking_detail_screen.dart';
import 'package:airbnb_clone/screens/home_screen.dart';
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
        builder: (BuildContext context, GoRouterState state) =>
            const BookingDetailScreen(),
      ),
    ],
  );
}
