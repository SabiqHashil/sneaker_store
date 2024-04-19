import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          buildProductItem('iPhone 13 & 14', 'M', Icons.delete, Icons.edit),
          Divider(),
          buildProductItem(
              'Product Name', 'Price \nLocation', Icons.delete, Icons.edit),
          Divider(),
          buildProductItem(
              'Product Name', 'Price \nLocation', Icons.delete, Icons.edit),
        ],
      ),
    );
  }

  Widget buildProductItem(
      String title, String subtitle, IconData deleteIcon, IconData editIcon) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min, // condense icons
        children: [
          IconButton(
            icon: Icon(deleteIcon, color: Colors.red),
            onPressed: () {
              // Handle delete action (e.g., remove item from cart list)
              print('Delete button pressed for $title');
            },
          ),
          IconButton(
            icon: Icon(editIcon),
            onPressed: () {
              // Handle edit action (e.g., navigate to edit product screen)
              print('Edit button pressed for $title');
            },
          ),
        ],
      ),
    );
  }
}
