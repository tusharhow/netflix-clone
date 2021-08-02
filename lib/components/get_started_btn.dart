import 'package:flutter/material.dart';

import '../constants.dart';


class GetStartedBTN extends StatelessWidget {
  const GetStartedBTN({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 20,
            vertical: defaultPadding),
        child: TextField(
          cursorHeight: 40,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25.0),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: InputBorder.none,
              hintText: '   Email address',
              hintStyle: TextStyle(
                  color: Colors.black54, fontSize: 14),
              suffixIcon: Container(
                height: 65,
                width: 250,
                color: commonRedColor,
                child: Row(
                  children: [
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontSize: 30),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 50,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

