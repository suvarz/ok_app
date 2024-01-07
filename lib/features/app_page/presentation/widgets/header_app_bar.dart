import 'package:flutter/material.dart';
import 'package:ok_app/config/constants.dart';

class HeaderAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  HeaderAppBar({required this.expandedHeight});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Row(
            children: [
              Expanded(child: Container()),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white, width: 5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    Constants.imagesRedMurphyBook,
                    width: 110,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 150,
                height: 150,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Unit 1'),
                    const Text('Present Simple'),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Start'),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
            ],
          ),

          /*child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('1122')),
            ),
          ),*/

          // top: expandedHeight / 4 - shrinkOffset,
          /*child: SizedBox(
            height: expandedHeight,
            child: Opacity(
              opacity: (1 - shrinkOffset / expandedHeight),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 8, color: Colors.white)),
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    color: Colors.red,
                    width: 150,
                    height: 150,
                    child: const Column(
                      children: [
                        Text('Unit 11'),
                        Text('Unit 11'),
                        Text('Unit 11'),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),*/
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0; // kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
