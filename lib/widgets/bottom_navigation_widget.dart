import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bnb_custom_painter.dart';
import 'package:food_delivery_futter/provviders/navigation_provider.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          width: size.width,
          height: 80,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, 80),
                painter: BNBCustomPainter(),
              ),
              Center(
                heightFactor: 0.5,
                child: Container(
                  height: 100.0,
                  width: 70.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.shopping_basket,
                      size: 35,
                    ),
                    elevation: 0.1,
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Provider.of<NavigationProvider>(context)
                                    .getCurrentIndex() ==
                                0
                            ? Colors.orange
                            : Colors.white,
                      ),
                      onPressed: () {
                        Provider.of<NavigationProvider>(context, listen: false)
                            .setIndex(0);
                      },
                      splashColor: Colors.white,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.restaurant_menu,
                          color: Provider.of<NavigationProvider>(context)
                                      .getCurrentIndex() ==
                                  1
                              ? Colors.orange
                              : Colors.white,
                        ),
                        onPressed: () {
                          Provider.of<NavigationProvider>(context,
                                  listen: false)
                              .setIndex(1);
                          //  setBottomBarIndex(1);
                        }),
                    Container(
                      width: size.width * 0.20,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: Provider.of<NavigationProvider>(context)
                                      .getCurrentIndex() ==
                                  2
                              ? Colors.orange
                              : Colors.white,
                        ),
                        onPressed: () {
                          Provider.of<NavigationProvider>(context,
                                  listen: false)
                              .setIndex(2);
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Provider.of<NavigationProvider>(context)
                                      .getCurrentIndex() ==
                                  3
                              ? Colors.orange
                              : Colors.white,
                        ),
                        onPressed: () {
                          Provider.of<NavigationProvider>(context,
                                  listen: false)
                              .setIndex(3);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
