import 'package:airbnb_clone/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'AirBnb Clone',
      theme: ThemeData(useMaterial3: true),
      routerConfig: AppRouter().router,
    );
  }
}
