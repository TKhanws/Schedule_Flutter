import 'package:flutter/material.dart';

class ProductFooter extends StatelessWidget {
  const ProductFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Roller Rabbit",
              style: TextStyle(color: Color(0XFFAAAAAA), fontSize: 14),
            ),
            Text(
              "Description",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0XFF000000),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF000000)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10, right: 10, left: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Add to Cart",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
