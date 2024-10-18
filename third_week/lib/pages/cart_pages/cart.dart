import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:third_week/pages/cart_pages/cart_widgets/checkout_button.dart';
import 'package:third_week/pages/product_pages/product_objects/product_object.dart';
import 'package:third_week/pages/product_pages/product_widgets/detail_header.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final botPadding = MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;

    final List<ProductObject> listProducts = getListProducts();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Cart",
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listProducts.length,
              itemBuilder: (context, index) {
                return _buildProductContainer(listProducts, index);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 8, left: 20, right: 20, bottom: botPadding),
            child: Column(
              children: [
                _buildTotalPrice(),
                const SizedBox(
                  height: 10,
                ),
                CheckoutButton(screenWidth: screenWidth)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Total:",
          style: TextStyle(
              fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Text(
          '${MoneyFormatter(amount: 5000000000).output.withoutFractionDigits} VND',
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildProductContainer(List<ProductObject> listProducts, int index) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 221, 221, 221),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SwipeActionCell(
        backgroundColor: Colors.white,
        key: ObjectKey(listProducts[index]),
        trailingActions: <SwipeAction>[
          SwipeAction(
              icon: const Icon(
                Icons.delete,
                size: 24,
                color: Colors.white,
              ),
              onTap: (CompletionHandler handler) async {
                listProducts.removeAt(index);
                setState(() {});
              },
              color: Colors.black),
        ],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(listProducts[index].urlImage),
                      fit: BoxFit.fitHeight),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listProducts[index].productName,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      listProducts[index].description,
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    DetailHeaderProduct(
                        title: "",
                        numberOfItem: 1,
                        cost: listProducts[index].cost)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
