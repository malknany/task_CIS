import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  const ItemButton(
      {Key? key,
      required this.text,
      required this.index,
      required this.isSelected})
      : super(key: key);
  final String text;
  final int index, isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: isSelected == index ? Colors.white : Colors.green.shade800,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(width: 1, color: Colors.green.shade900),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 15,
            color: isSelected == index ? Colors.green.shade800:Colors.white),
      )),
    );
  }
}
