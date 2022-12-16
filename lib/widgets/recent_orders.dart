import 'package:flutter/material.dart';
import 'package:food_delivery_futter/data/data.dart';

import '../models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  _buildRecentOrders(BuildContext context, Order order) {
    return Container(
      width: 320.0,
      margin: EdgeInsets.only(right: 10.0, left: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                height: 100.0,
                width: 100.0,
                image: AssetImage(order.food.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  order.food.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  order.restaurant.name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  order.date,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 40.0,
              margin: EdgeInsets.only(right: 5.0),
              decoration: BoxDecoration(
                color: Color(0xff9e1fe0),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(width: 1.0, color: Colors.grey.shade200),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(right: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, index) {
                Order order = currentUser.orders[index];
                return _buildRecentOrders(context, order);
              }),
        )
      ],
    );
  }
}
