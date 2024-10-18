// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

class DetailHeaderProduct extends StatefulWidget {
  int cost;
  int numberOfItem;
  final String title;
  DetailHeaderProduct(
      {super.key,
      required this.numberOfItem,
      required this.cost,
      required this.title});

  @override
  State<DetailHeaderProduct> createState() => _DetailHeaderProductState();
}

class _DetailHeaderProductState extends State<DetailHeaderProduct> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.title != ""
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '${MoneyFormatter(amount: widget.cost.toDouble()).output.withoutFractionDigits} VND',
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            : Text(
                '${MoneyFormatter(amount: widget.cost.toDouble()).output.withoutFractionDigits} VND',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0XFFEEEEEE)),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 3, bottom: 3, right: 8, left: 8),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      if (widget.numberOfItem > 1) {
                        setState(() {
                          widget.numberOfItem--;
                          widget.cost -=
                              widget.cost ~/ (widget.numberOfItem + 1);
                        });
                      }
                    },
                    icon: const Icon(Icons.remove)),
                Padding(
                  padding: const EdgeInsets.only(left: 3, right: 3),
                  child: Text(
                    widget.numberOfItem.toString(),
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.numberOfItem++;
                        widget.cost += widget.cost ~/ (widget.numberOfItem - 1);
                      });
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
