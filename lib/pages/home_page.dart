import 'package:coffeeapp/util/coffee_tile.dart';
import 'package:coffeeapp/util/coffee_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          //find the best coffee
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25.0),

          //horizontal ListView of coffee types
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(
                  coffeeType: 'Cappucino',
                  isSelected: true,
                ),
                CoffeeType(
                  coffeeType: 'black Coffee',
                  isSelected: false,
                ),
                CoffeeType(
                  coffeeType: 'Latte',
                  isSelected: false,
                )
              ],
            ),
          ),

          //horizontal list view of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath: 'lib/images/latte.png',
                  coffeeName: 'Latte',
                  coffeePrice: '4.20',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/black.png',
                  coffeeName: 'Black',
                  coffeePrice: '4.60',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/cappucino.png',
                  coffeeName: 'Cappucino',
                  coffeePrice: '4.06',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
