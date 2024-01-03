import 'package:flutter/material.dart';

class HeaderAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  HeaderAppBar({required this.expandedHeight});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
      child: const Text('header'),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
