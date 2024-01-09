import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class PropertyTile extends StatefulWidget {
  const PropertyTile({super.key});

  @override
  State<PropertyTile> createState() => _PropertyTileState();
}

class _PropertyTileState extends State<PropertyTile> {
  var currentImg = 0;
  late PageController pageController;

  get curve => null;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          width: size.width,
          height: size.width - 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentImg = value;
                  });
                },
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3570&q=80',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1613490493576-7fde63acd811?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3571&q=80',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 8,
                child: DotsIndicator(
                  dotsCount: 3,
                  position: currentImg,
                  decorator: const DotsDecorator(activeColor: Colors.white),
                  onTap: (index) {
                    pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dubai, UAE',
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Beautiful Hotel in the middle of the city',
                    style: textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Wi-Fi Swimming Pool Fitness Center',
                    style: textTheme.bodyLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 4.0),
                  Text('4.8'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
