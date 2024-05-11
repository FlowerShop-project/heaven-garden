import 'package:flutter/material.dart';
import '../models/flower.dart';

class CartItem extends StatefulWidget {
  final Flower flower;
  final int quantity;
  final double totalPrice;
  final Function() onRemove;
  final Function() onAdd;
  final VoidCallback navigateToPayment;

  const CartItem({
    super.key,
    required this.flower,
    required this.quantity,
    required this.totalPrice,
    required this.onRemove,
    required this.onAdd,
    required this.navigateToPayment,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    widget.onRemove();
  }

  void addItemToCart() {
    widget.onAdd();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.flower.imagePath),
        title: Text(widget.flower.name),
        subtitle: Text(widget.flower.price),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: removeItemFromCart,
            ),
            Text(widget.quantity.toString()),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: addItemToCart,
            ),
            const SizedBox(width: 8),
            Text("\$${widget.totalPrice.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
