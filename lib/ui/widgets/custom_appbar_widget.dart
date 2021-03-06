import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 35,
            ),
          ),
          Text(
            'travelingg',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
