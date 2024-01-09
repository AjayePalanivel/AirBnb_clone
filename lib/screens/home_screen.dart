import 'package:airbnb_clone/utils/color_pallet.dart';
import 'package:airbnb_clone/widgets/property_tile.dart';
import 'package:airbnb_clone/widgets/property_type_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheam = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: appWhite,
            boxShadow: [
              BoxShadow(
                color: appBlack.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Stack(
            children: [
              const Positioned(
                  bottom: 0, left: 0, right: 0, child: PropertyTypeList()),
              Positioned(
                top: 56,
                right: 8,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.tune, size: 30),
                ),
              ),
              Positioned(
                left: 16,
                right: 72,
                top: 50,
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pushNamed('booking_detail_screen');
                  },
                  child: Hero(
                    tag: 'Search',
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: appWhite,
                        border: Border.all(
                          color: appGrey,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                            color: appGrey.withOpacity(0.7),
                            blurRadius: 6,
                            offset: const Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Where to?',
                                style: textTheam.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Anywhere - Any week - Any guest',
                                style: textTheam.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [1, 2, 3].map((e) {
          return const PropertyTile();
        }).toList(),
      ),
    );
  }
}
