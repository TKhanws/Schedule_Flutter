import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:third_week/pages/product_pages/product_detail.dart';

class ProductItem extends StatelessWidget {
  final String urlImage;
  final String productName;
  final String description;
  final int cost;
  const ProductItem(
      {super.key,
      required this.urlImage,
      required this.productName,
      required this.description,
      required this.cost});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                        urlImage: urlImage,
                        productName: productName,
                        previewText: description,
                        cost: cost,
                      )));
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(urlImage),
                          fit: BoxFit.fitHeight))),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              productName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(description,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 3,
            ),
            Text(
                '${MoneyFormatter(amount: cost.toDouble()).output.withoutFractionDigits} VND',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
