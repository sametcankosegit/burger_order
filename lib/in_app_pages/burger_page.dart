import 'package:burger_order/components/burger_item_options.dart';
import 'package:burger_order/components/card_item_for_home.dart';
import 'package:flutter/material.dart';

class BurgerPage extends StatelessWidget {
  final CardItem item;

  const BurgerPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    item.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 370,
                  bottom: 0, // Align the container at the bottom of the image
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 15,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white, // Container arka plan rengi
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                item.subtitle,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item.desc,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        OptionItem(optionName: 'hop', isSelected: true)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
