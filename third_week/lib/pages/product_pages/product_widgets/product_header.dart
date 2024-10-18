import 'package:flutter/material.dart';
import 'package:third_week/pages/cart_pages/cart.dart';
import 'package:badges/badges.dart' as badges;

class ProductHeader extends StatelessWidget {
  final double topPadding;
  const ProductHeader({super.key, required this.topPadding});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPadding,
      right: 15,
      left: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            child: badges.Badge(
              badgeContent: const Text('3'),
              child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: const Icon(Icons.shopping_bag)),
            ),
          )
        ],
      ),
    );
  }
}
