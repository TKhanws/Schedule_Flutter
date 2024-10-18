import 'package:flutter/material.dart';

class CommonTextfield extends StatelessWidget {
  const CommonTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0XFFEFEFEF),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextField(
        onTap: () {},
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              size: 20,
            ),
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            border: InputBorder.none),
      ),
    );
  }
}
