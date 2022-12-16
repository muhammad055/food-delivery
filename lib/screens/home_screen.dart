import 'package:flutter/material.dart';
import 'package:food_delivery_futter/data/data.dart';
import 'package:badges/badges.dart';
import 'package:food_delivery_futter/widgets/recent_orders.dart';
import '../widgets/bottom_navigation_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    // setState(() {
    //   currentIndex = index;
    // });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lazy Pops',
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
            Positioned(
              child: Column(
                children: [
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  width: 0.4,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                  width: 0.4,
                                  color: Colors.redAccent,
                                ),
                              ),
                              hintText: 'Search Food or Restaturants',
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 30.0,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.clear),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        RecentOrders()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            BottomNavigationWidget(size: size),
          ],
        ));
  }
}
