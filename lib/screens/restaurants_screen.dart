import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/bottom_navigation_widget.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Restaurant Screen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
            iconSize: 30.0,
          ),
          actions: <Widget>[
            // TextButton(
            //   onPressed: () {},
            //   child: Text(
            //     'Cart(${currentUser.cart.length})',
            //     style: TextStyle(color: Colors.white, fontSize: 20.0),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
              child: Badge(
                badgeColor: Color(0xfff5226f),
                badgeContent: Text(
                  '${currentUser.cart.length}',
                  style: TextStyle(color: Colors.white),
                ),
                child: Icon(Icons.shopping_cart),
              ),
            )
          ],
        ),
        body: Stack(
          children: [
            BottomNavigationWidget(size: size),
          ],
        ));
  }
}
