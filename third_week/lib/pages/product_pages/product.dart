import 'package:flutter/material.dart';
import 'package:third_week/pages/product_pages/product_objects/product_object.dart';
import 'package:third_week/widgets/product_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductObject> listProducts = getListProducts();
    int productLength = listProducts.length;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Pictures",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: const SizedBox(
            height: 24,
            width: 24,
            child: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(
              Icons.search,
              size: 25,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          children: List.generate(productLength, (index) {
            return _buildProduct(listProducts, index);
          }),
        ),
      ),
    );
  }

  Widget _buildProduct(List<ProductObject> productList, index) {
    return ProductItem(
      urlImage: productList[index].urlImage,
      productName: productList[index].productName,
      description: productList[index].description,
      cost: productList[index].cost,
    );
  }
}
