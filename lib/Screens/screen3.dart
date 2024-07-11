import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: orders.length, // Replace with actual number of orders
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.icecream,
                color: Colors.white,
              ),
            ),
            title: Text('Order #${order.orderNumber}'),
            subtitle: Text('Ice Cream Flavor: ${order.iceCreamFlavor}'),
            trailing: Text(
              order.status,
              style: TextStyle(
                color: order.status == 'Delivered' ? Colors.green : Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Handle tap on order item
              // You can navigate to a detailed order view or perform other actions
            },
          );
        },
      ),
    );
  }
}

class Order {
  final int orderNumber;
  final String iceCreamFlavor;
  final String status;

  Order({
    required this.orderNumber,
    required this.iceCreamFlavor,
    required this.status,
  });
}

List<Order> orders = [
  Order(orderNumber: 1, iceCreamFlavor: 'Chocolate', status: 'Delivered'),
  Order(orderNumber: 2, iceCreamFlavor: 'Vanilla', status: 'In Progress'),
  Order(orderNumber: 3, iceCreamFlavor: 'Strawberry', status: 'Cancelled'),
  Order(orderNumber: 4, iceCreamFlavor: 'Mint Chip', status: 'Delivered'),
  Order(orderNumber: 5, iceCreamFlavor: 'Cookies & Cream', status: 'In Progress'),
];
