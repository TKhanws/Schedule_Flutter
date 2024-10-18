import 'package:flutter/material.dart';
import 'package:third_week/pages/product_pages/product_widgets/detail_header.dart';
import 'package:third_week/pages/product_pages/product_widgets/image_stack.dart';
import 'package:third_week/pages/product_pages/product_widgets/product_footer.dart';
import 'package:third_week/pages/product_pages/product_widgets/product_header.dart';
import 'package:third_week/pages/product_pages/product_widgets/product_info.dart';

class ProductDetailPage extends StatelessWidget {
  final String urlImage;
  final String productName;
  final String previewText;
  final int cost;
  const ProductDetailPage(
      {super.key,
      required this.urlImage,
      required this.productName,
      required this.previewText,
      required this.cost});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final topPadding = MediaQuery.of(context).padding.top;
    final botPadding = MediaQuery.of(context).padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          ImageStackWidget(
              topPadding: topPadding,
              screenHeight: screenHeight,
              urlImage: urlImage),
          ProductHeader(topPadding: topPadding),
          Positioned(
            bottom: 0,
            height: 5 / 10 * screenHeight,
            left: 0,
            right: 0,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: botPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailHeaderProduct(
                        title: "Total Price", cost: cost, numberOfItem: 1),
                    const SizedBox(
                      height: 20,
                    ),
                    const Expanded(
                        child: ProductInfo(
                      description:
                          "Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer.",
                    )),
                    const ProductFooter(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
