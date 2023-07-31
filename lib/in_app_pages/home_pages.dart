import 'package:burger_order/components/search_bar.dart';
import 'package:burger_order/components/top_listview.dart';
import 'package:flutter/material.dart';
import 'package:burger_order/components/bottom_listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Seçenekler icon
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                      },
                      icon: const Icon(Icons.list_rounded, size: 45),
                    ),
                    //search bar
                    const Icon(Icons.search),
                    //shopping cart
                    const Icon(Icons.shopping_cart)
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Todays',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Specials',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const TopListView(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 7),
                    Text(
                      'Burgers',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const BottomListView(),
            ],
          ),
        ),
      ),
    );
  }
}
