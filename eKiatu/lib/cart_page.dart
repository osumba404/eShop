import 'package:flutter/material.dart';
import 'global_variables.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final cartItem = cart[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(cartItem["imageURL"] as String),
              radius: 40,
            ),
            trailing: IconButton(
              onPressed: () {},
               icon: const Icon(Icons.delete),
               color: Colors.red,
               ),
            title: Text(
              cartItem["title"].toString(),
            ),
            subtitle: Text("Size: ${cartItem["size"]}"),
          );
        }
        )
    );
  }
}
