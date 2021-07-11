import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  final String imageUrl;
  final String text;

  CategoriesTile({required this.imageUrl, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 127,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            imageUrl,
            width: 38,
          ),
          SizedBox(height: 20),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
