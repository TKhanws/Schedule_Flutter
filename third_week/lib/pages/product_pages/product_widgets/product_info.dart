import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String description;
  const ProductInfo({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    List<String> sizes = ["S", "M", "L", "XL", "XXL", "S", "XL", "XXL", "S"];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Size",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sizes.length,
              itemBuilder: (context, index) {
                return _buildSizeContainer(sizes, index);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Description",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          Text(
            description,
            style: const TextStyle(color: Color(0XFF666666), fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeContainer(List<String> sizes, int index) {
    return Container(
      height: 45,
      width: 45,
      margin: const EdgeInsets.only(right: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0XFFDDDDDD))),
      child: Text(
        sizes[index],
        style: const TextStyle(
            fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w700),
      ),
    );
  }
}
