import 'package:flutter/material.dart';
import 'package:food_delivery_futter/screens/home_screen.dart';
import 'package:food_delivery_futter/screens/notifications_screen.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery_futter/provviders/navigation_provider.dart';
import 'package:food_delivery_futter/screens/notifications_screen.dart';
import 'package:food_delivery_futter/screens/restaurants_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        colorScheme: ColorScheme.light().copyWith(primary: Color(0xff9e1fe0)),
      ),
      home: Navigator(
        pages: [
          if (Provider.of<NavigationProvider>(context).getCurrentIndex() == 0)
            MaterialPage(
              child: HomeScreen(),
            ),
          if (Provider.of<NavigationProvider>(context).getCurrentIndex() == 1)
            MaterialPage(
              child: RestaurantsScreen(),
            ),
          if (Provider.of<NavigationProvider>(context).getCurrentIndex() == 2)
            MaterialPage(
              child: NotificationsScreen(),
            ),
          if (Provider.of<NavigationProvider>(context).getCurrentIndex() == 3)
            MaterialPage(
              child: NotificationsScreen(),
            ),
        ],
        onPopPage: (route, result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
