import 'package:flutter/material.dart';
import 'package:burger_order/components/card_item_for_home.dart';

class BottomListView extends StatefulWidget {
  const BottomListView({super.key});
  @override
  State<BottomListView> createState() => _BottomListViewState();
}

class _BottomListViewState extends State<BottomListView> {
  List<CardItemTwo> itemsTwo = [
    CardItemTwo(
      imageAsset: 'assets/images/popular_burgers/fire_and_ice.jpg',
      title: 'FIRE AND ICE BOMB',
      subtitle: '\$3',
      desc:
          'Experience the culinary fireworks with the Fire and Ice Bomb! A sizzling, spicy beef patty fused with cool, creamy avocado and tangy jalapeno mayo, erupting between two toasted buns. This explosive delight will ignite your taste buds with its fiery flavor contrast, leaving you craving another refreshing bite.',
    ),
    CardItemTwo(
      imageAsset: 'assets/images/popular_burgers/forbidden_forest.jpg',
      title: 'FORBIDDEN FOREST',
      subtitle: '\$6',
      desc:
          'Venture into the Forbidden Forest burger, where wild mushroom-infused beef meets the earthy embrace of truffle aioli. A magical blend of flavors, topped with melty Brie cheese and crisp arugula, transports you to an enchanted gastronomic realm where natures bounty reigns supreme.',
    ),
    CardItemTwo(
      imageAsset: 'assets/images/popular_burgers/melted_brie_beauty.jpg',
      title: 'MELTED BRIE BEAUTY',
      subtitle: '\$14',
      desc:
          'Indulge in decadence with the Melted Brie Beauty! Savor the juicy beef patty embraced by a luscious blanket of melted Brie, accompanied by caramelized onions and a hint of fig jam sweetness. This gourmet masterpiece celebrates the art of simplicity and sophistication.',
    ),
    CardItemTwo(
      imageAsset: 'assets/images/popular_burgers/oceanic_catch.jpg',
      title: 'OCEANIC CATCH',
      subtitle: '\$7',
      desc:
          'Dive into a sea of flavors with the Oceanic Catch burger! Grilled salmon meets the refreshing crunch of cucumber, tangy dill mayo, and a burst of citrusy lemon zest. A delightful seafood sensation, capturing the essence of the ocean on your taste buds.',
    ),
    CardItemTwo(
      imageAsset: 'assets/images/popular_burgers/umami_explosion.jpg',
      title: 'UMAMI EXPLOSION',
      subtitle: '\$12',
      desc:
          'Prepare for an Umami Explosion in your mouth! An extraordinary blend of juicy beef, savory shiitake mushrooms, umami-rich soy glaze, and a touch of wasabi mayo. This burger takes your palate on a journey of exquisite, harmonious flavors that linger long after each bite.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) => buildCardTwo(item: itemsTwo[index]),
      ),
    );
  }

  Widget buildCardTwo({
    required CardItemTwo item,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 120,
          child: Column(children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.imageAsset),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              item.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(
              item.subtitle,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ]),
        ),
      );
}
