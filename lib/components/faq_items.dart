import 'package:flutter/material.dart';

import '../constants.dart';


class FaqItems extends StatelessWidget {
  const FaqItems({
    Key? key,
    @required this.label,
  }) : super(key: key);
  final label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 750,
      color: faqBtn,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
