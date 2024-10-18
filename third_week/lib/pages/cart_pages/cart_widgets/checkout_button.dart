import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final double screenWidth;
  const CheckoutButton({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          minimumSize: Size(screenWidth - 40, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        child: const Text(
          "Proceed to Checkout",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}
