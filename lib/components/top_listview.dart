import 'package:flutter/material.dart';
import '../in_app_pages/burger_page.dart';
import 'card_item_for_home.dart';

class TopListView extends StatefulWidget {
  const TopListView({super.key});

  @override
  State<TopListView> createState() => _TopListViewState();
}

class _TopListViewState extends State<TopListView> {
  List<CardItem> items = [
    const CardItem(
      imageAsset: 'assets/images/todays_special/guacamole_fiesta_burger.jpg',
      title: 'FIESTA BURGER',
      subtitle: '\$7',
      desc:
          'Celebrate flavor fiesta with the Fiesta Burger! A zesty beef patty infused with Latin spices, topped with grilled peppers, melted pepper jack cheese, and tangy salsa. Let the party begin in your mouth!',
    ),
    const CardItem(
      imageAsset: 'assets/images/todays_special/heavenly_baconator.jpg',
      title: 'HEAVENLY BACONATOR',
      subtitle: '\$3',
      desc:
          'Indulge in bacon heaven with the Heavenly Baconator! Succulent beef patty embraced by crispy bacon, creamy avocado, smoky gouda cheese, and a drizzle of maple aioli. A divine treat for your taste buds.',
    ),
    const CardItem(
      imageAsset: 'assets/images/todays_special/juicy_classic.jpg',
      title: 'JUICY CLASSIC',
      subtitle: '\$4',
      desc:
          'Relish the simplicity of Juicy Classic! A mouthwatering beef patty, cooked to perfection, adorned with fresh lettuce, juicy tomatoes, and classic American cheese. Timeless taste that never disappoints.',
    ),
    const CardItem(
      imageAsset: 'assets/images/todays_special/southern_comfort_burger.jpg',
      title: 'SOUTHERN COMFORT',
      subtitle: '\$8',
      desc:
          'Experience a taste of the South with the Southern Comfort! Tender chicken patty coated in a golden crunch, topped with coleslaw, pickles, and a touch of tangy BBQ sauce. True comfort food delight.',
    ),
    const CardItem(
      imageAsset: 'assets/images/todays_special/spicy_diablo_burger.jpg',
      title: 'SPICY DIABLO',
      subtitle: '\$12',
      desc:
          'Brace for a fiery feast with the Spicy Diablo! Fiery beef patty, jalapenos, pepper jack cheese, and spicy sriracha mayo unite for an inferno of flavors. Dare to tame the heat?',
    ),
    const CardItem(
      imageAsset: 'assets/images/todays_special/tangy_teriyaki_twist.jpg',
      title: 'TANGY TERIYAKI TWIST',
      subtitle: '\$6',
      desc:
          'Savor the fusion of flavors with the Tangy Teriyaki Twist! Juicy beef or chicken, grilled pineapple, teriyaki glaze, and a sprinkle of sesame seeds. A harmonious blend of sweet and savory delights.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) => buildCard(item: items[index]),
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 220,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      child: Ink.image(
                        image: AssetImage(item.imageAsset),
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BurgerPage(
                                  item: item,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                item.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                item.subtitle,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        ),
      );
}
