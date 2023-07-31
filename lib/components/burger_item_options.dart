import 'package:flutter/material.dart';

class BurgerOptions extends StatelessWidget {
  final List<String> options = [
    'Cheese',
    'Lettuce',
    'Tomato',
    'Onion',
    'Pickles',
    'Bacon',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              OptionItem(
                optionName: options[i],
                isSelected: true, // You can manage the selected state here
              ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 3; i < 6; i++)
              OptionItem(
                optionName: options[i],
                isSelected: false, // You can manage the selected state here
              ),
          ],
        ),
      ],
    );
  }
}

class OptionItem extends StatelessWidget {
  final String optionName;
  final bool isSelected;

  const OptionItem({
    required this.optionName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            optionName,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.add,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
