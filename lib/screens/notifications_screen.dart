import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../widgets/base_app_bar.dart';
import '../data/data.dart';
import '../widgets/bottom_navigation_widget.dart';
import '../widgets/base_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications Screen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          leading: IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
            iconSize: 30.0,
          ),
          actions: <Widget>[
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
