import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key,required this.color,required this.onTap}) : super(key: key);
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(width: 3,color: Colors.white)
        ),
      ),
    );
  }
}
