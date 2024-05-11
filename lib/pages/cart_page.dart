import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/flower.dart';
import 'PaymentPage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                    color: Color.fromARGB(255, 163, 21, 78),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.payment,
                    size: 30,
                    color: Color.fromARGB(255, 163, 21, 78),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cart.flowerFlower.length,
                itemBuilder: (context, index) {
                  Flower individualFlower = cart.flowerFlower[index];
                  int quantity = cart.getFlowerCount(individualFlower);
                  double totalPrice =
                      double.parse(individualFlower.price) * quantity;

                  if (quantity > 0) {
                    return CartItem(
                      flower: individualFlower,
                      quantity: quantity,
                      totalPrice: totalPrice,
                      onRemove: () {
                        cart.removeItemFromCart(individualFlower);
                      },
                      onAdd: () {
                        cart.addItemToCart(individualFlower);
                      },
                      navigateToPayment: () {},
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (cart.hasFlowers()) // Show only if there are flowers in cart
                  Expanded(
                    child: Row(
                      children: [
                        Checkbox(
                          value: cart.hasExtraFee(),
                          onChanged: (newValue) {
                            setState(() {
                              if (newValue != null) {
                                if (newValue) {
                                  cart.addExtraFee(10);
                                } else {
                                  cart.removeExtraFee(10);
                                }
                              }
                            });
                          },
                        ),
                        Text(
                          'Add \$10 to make bouquet.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            Text(
              '  Total: \$${(cart.getTotalPrice() + (cart.hasExtraFee() ? 10 : 0)).toStringAsFixed(2)}',
              style: const TextStyle(
                color: Color.fromARGB(255, 163, 21, 78),
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
